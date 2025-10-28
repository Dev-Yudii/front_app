import 'package:condominio_frontapp/widgets/menu_lateral.dart';
import 'package:flutter/material.dart';

class LoginTela extends StatefulWidget {
  const LoginTela({super.key});

  @override
  State<LoginTela> createState() => _LoginTelaState();
}

class _LoginTelaState extends State<LoginTela> {
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
                  onPressed: () {
                    // Aqui você chamaria sua função de login via HTTP
                    print('Login: ${_emailController.text}');
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