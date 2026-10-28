import 'package:flutter/material.dart';

import '../../data/clima_service.dart';
import '../../data/receitas_por_clima.dart';
import '../../domain/receita.dart';

/// Card da tela inicial: mostra o clima de agora e sugere uma receita.
class ClimaSugestaoCard extends StatefulWidget {
  const ClimaSugestaoCard({
    super.key,
    required this.receitas,
    required this.aoAbrir,
  });

  /// Todas as receitas disponíveis (as que vêm do Firestore).
  final List<Receita> receitas;

  /// Chamado ao tocar no card (normalmente navega para o detalhe).
  final void Function(Receita receita) aoAbrir;

  @override
  State<ClimaSugestaoCard> createState() => _ClimaSugestaoCardState();
}

class _ClimaSugestaoCardState extends State<ClimaSugestaoCard> {
  // Busca o clima uma única vez, quando o card aparece.
  late final Future<Clima> _clima = ClimaService().buscarClima();

  IconData _icone(Humor h) {
    switch (h) {
      case Humor.calor:
        return Icons.wb_sunny_outlined;
      case Humor.frio:
        return Icons.ac_unit;
      case Humor.chuva:
        return Icons.umbrella_outlined;
      case Humor.ameno:
        return Icons.cloud_outlined;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Clima>(
      future: _clima,
      builder: (context, snap) {
        if (snap.connectionState != ConnectionState.done) {
          return const Card(
            margin: EdgeInsets.fromLTRB(16, 12, 16, 4),
            child: SizedBox(
              height: 96,
              child: Center(child: CircularProgressIndicator()),
            ),
          );
        }
        // Se der erro (sem internet etc.), o card simplesmente não aparece.
        if (snap.hasError || !snap.hasData) return const SizedBox.shrink();

        final clima = snap.data!;
        final receita = sugerirReceita(widget.receitas, clima.humor);
        if (receita == null) return const SizedBox.shrink();

        final tema = Theme.of(context);
        final url = receita.imagemUrl;

        return Card(
          clipBehavior: Clip.antiAlias,
          margin: const EdgeInsets.fromLTRB(16, 12, 16, 4),
          child: InkWell(
            onTap: () => widget.aoAbrir(receita),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: SizedBox(
                      width: 88,
                      height: 88,
                      child: (url == null || url.isEmpty)
                          ? const _SemFoto()
                          : Image.network(
                              url,
                              fit: BoxFit.cover,
                              errorBuilder: (_, __, ___) => const _SemFoto(),
                            ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(_icone(clima.humor), size: 18),
                            const SizedBox(width: 6),
                            Expanded(
                              child: Text(
                                '${clima.temperatura.round()} °C, ${clima.descricao}',
                                style: tema.textTheme.labelLarge,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          clima.humor.frase,
                          style: tema.textTheme.bodySmall,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'Sugestão: ${receita.titulo}',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: tema.textTheme.titleSmall,
                        ),
                        if (!clima.localAtual)
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              'Clima de São Paulo (localização desativada)',
                              style: tema.textTheme.labelSmall,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _SemFoto extends StatelessWidget {
  const _SemFoto();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surfaceContainerHighest,
      child: const Icon(Icons.restaurant),
    );
  }
}
