import 'dart:convert';

import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

/// "Humor" do dia, usado para escolher a receita.
enum Humor { calor, frio, ameno, chuva }

extension HumorTexto on Humor {
  String get frase {
    switch (this) {
      case Humor.calor:
        return 'Dia quente! Que tal algo leve e fresquinho?';
      case Humor.frio:
        return 'Tá friozinho... hora de uma comida quentinha.';
      case Humor.chuva:
        return 'Dia de chuva pede comida de conforto.';
      case Humor.ameno:
        return 'Tempo agradável, qualquer receita cai bem.';
    }
  }
}

class Clima {
  const Clima({
    required this.temperatura,
    required this.codigo,
    required this.humor,
    required this.descricao,
    required this.localAtual,
  });

  final double temperatura;

  /// Código WMO de condição do tempo (0 = céu limpo, 61 = chuva, etc.).
  final int codigo;
  final Humor humor;
  final String descricao;

  /// false quando a localização foi negada e usamos a cidade padrão.
  final bool localAtual;
}

/// Busca o clima atual na Open-Meteo (gratuita, sem chave de API).
class ClimaService {
  // Cidade padrão (São Paulo) usada se a pessoa negar a localização.
  static const _latPadrao = -23.5505;
  static const _lonPadrao = -46.6333;

  Future<Clima> buscarClima() async {
    var lat = _latPadrao;
    var lon = _lonPadrao;
    var localAtual = false;

    try {
      final pos = await _posicaoAtual();
      if (pos != null) {
        lat = pos.latitude;
        lon = pos.longitude;
        localAtual = true;
      }
    } catch (_) {
      // Sem localização: segue com a cidade padrão.
    }

    final uri = Uri.https('api.open-meteo.com', '/v1/forecast', {
      // 2 casas decimais já bastam para o clima e evitam enviar a posição exata.
      'latitude': lat.toStringAsFixed(2),
      'longitude': lon.toStringAsFixed(2),
      'current': 'temperature_2m,weather_code',
      'timezone': 'auto',
    });

    final resp = await http.get(uri).timeout(const Duration(seconds: 10));
    if (resp.statusCode != 200) {
      throw Exception('Open-Meteo respondeu ${resp.statusCode}');
    }

    final json = jsonDecode(resp.body) as Map<String, dynamic>;
    final atual = json['current'] as Map<String, dynamic>;
    final temp = (atual['temperature_2m'] as num).toDouble();
    final codigo = (atual['weather_code'] as num).toInt();

    return Clima(
      temperatura: temp,
      codigo: codigo,
      humor: _humorDe(temp, codigo),
      descricao: _descricaoDe(codigo),
      localAtual: localAtual,
    );
  }

  Future<Position?> _posicaoAtual() async {
    if (!await Geolocator.isLocationServiceEnabled()) return null;

    var permissao = await Geolocator.checkPermission();
    if (permissao == LocationPermission.denied) {
      permissao = await Geolocator.requestPermission();
    }
    if (permissao == LocationPermission.denied ||
        permissao == LocationPermission.deniedForever) {
      return null;
    }

    return Geolocator.getCurrentPosition(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.low,
        timeLimit: Duration(seconds: 8),
      ),
    );
  }

  static bool _chove(int c) =>
      (c >= 51 && c <= 67) || (c >= 80 && c <= 82) || c >= 95;

  static Humor _humorDe(double temp, int codigo) {
    if (_chove(codigo)) return Humor.chuva;
    if (temp >= 25) return Humor.calor;
    if (temp <= 18) return Humor.frio;
    return Humor.ameno;
  }

  static String _descricaoDe(int c) {
    if (c == 0) return 'céu limpo';
    if (c <= 3) return 'parcialmente nublado';
    if (c == 45 || c == 48) return 'com neblina';
    if (c >= 51 && c <= 57) return 'com garoa';
    if (c >= 61 && c <= 67) return 'com chuva';
    if ((c >= 71 && c <= 77) || c == 85 || c == 86) return 'com neve';
    if (c >= 80 && c <= 82) return 'com pancadas de chuva';
    if (c >= 95) return 'com tempestade';
    return 'tempo instável';
  }
}
