import 'package:flutter/material.dart';
import '/../api/repository/auth_repository.dart';
import '/../widgets/menu_lateral.dart';

class LoginTela extends StatefulWidget {
  const LoginTela({super.key});

  @override
  State<LoginTela> createState() => _LoginTelaState();
}

class _LoginTelaState extends State<LoginTela> {
  final AuthRepository _authRepository = AuthRepository();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login (teste)'),
      ),
      drawer: const MenuLateral(),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(size: 100), // Logo temporário
              const SizedBox(height: 28),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'E-mail ou RA',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                        _obscurePassword ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    final email = _emailController.text;
                    final senha = _passwordController.text;

                    try {
                      final usuario = await _authRepository.login(email, senha);

                      if (usuario != null && usuario.token != null) {
                        print('Login OK! Token: ${usuario.token}');
                        // Pesquisar como fazer depois para salvar o token
                        Navigator.pushReplacementNamed(context, '/dashboard');
                      } else {
                        // Login falhou (resposta sem token)
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Erro'),
                            content: const Text('Usuário ou senha inválidos'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      }
                    } catch (e) {
                      // Captura falhas no Dio ou erros inesperados
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Erro'),
                          content: Text(e.toString()),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  child: const Text('Login'),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      // Navegar para tela de cadastro
                    },
                    child: const Text('Criar conta'),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navegar para recuperação de senha
                    },
                    child: const Text('Esqueceu a senha?'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}