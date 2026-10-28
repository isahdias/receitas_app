import 'package:flutter/material.dart';

import '../../data/auth_service.dart';

/// Tela de login e cadastro (Firebase Authentication).
/// Quando o login dá certo, o go_router redireciona sozinho para a lista.
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _senhaCtrl = TextEditingController();

  bool _modoCadastro = false;
  bool _carregando = false;
  bool _ocultarSenha = true;

  @override
  void dispose() {
    _emailCtrl.dispose();
    _senhaCtrl.dispose();
    super.dispose();
  }

  Future<void> _enviar() async {
    if (_carregando) return; // bloqueia múltiplos envios
    if (!_formKey.currentState!.validate()) return;

    final messenger = ScaffoldMessenger.of(context);
    setState(() => _carregando = true);
    try {
      if (_modoCadastro) {
        await authService.cadastrar(_emailCtrl.text, _senhaCtrl.text);
      } else {
        await authService.entrar(_emailCtrl.text, _senhaCtrl.text);
      }
      // Sucesso: o router troca de tela automaticamente.
    } catch (e) {
      messenger.showSnackBar(
        SnackBar(content: Text(AuthService.mensagemDeErro(e))),
      );
    } finally {
      if (mounted) setState(() => _carregando = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final cores = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Icon(Icons.restaurant_menu, size: 64, color: cores.primary),
                    const SizedBox(height: 8),
                    Text(
                      'Tempero do Tempo',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _modoCadastro ? 'Crie sua conta' : 'Entre na sua conta',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      controller: _emailCtrl,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'E-mail',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                      validator: (v) {
                        final t = (v ?? '').trim();
                        if (t.isEmpty) return 'Informe o e-mail';
                        if (!t.contains('@') || !t.contains('.')) {
                          return 'E-mail inválido';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _senhaCtrl,
                      obscureText: _ocultarSenha,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(Icons.lock_outline),
                        suffixIcon: IconButton(
                          icon: Icon(_ocultarSenha
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () =>
                              setState(() => _ocultarSenha = !_ocultarSenha),
                        ),
                      ),
                      validator: (v) {
                        if ((v ?? '').isEmpty) return 'Informe a senha';
                        if (_modoCadastro && v!.length < 6) {
                          return 'Mínimo de 6 caracteres';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),
                    FilledButton(
                      onPressed: _carregando ? null : _enviar,
                      child: _carregando
                          ? const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : Text(_modoCadastro ? 'Cadastrar' : 'Entrar'),
                    ),
                    TextButton(
                      onPressed: _carregando
                          ? null
                          : () =>
                              setState(() => _modoCadastro = !_modoCadastro),
                      child: Text(_modoCadastro
                          ? 'Já tenho conta. Entrar'
                          : 'Não tenho conta. Cadastrar'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
