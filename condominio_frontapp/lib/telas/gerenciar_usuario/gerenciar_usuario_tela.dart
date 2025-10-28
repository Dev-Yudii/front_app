import 'package:condominio_frontapp/widgets/menu_lateral.dart';
import 'package:flutter/material.dart';

class GerenciarUsuarioTela extends StatelessWidget {
  const GerenciarUsuarioTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gerenciar Usuários'),
      ),
      drawer: const MenuLateral(),
      body: const Center(
        child: Text(
          'Gerenciar Usuários Tela',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}