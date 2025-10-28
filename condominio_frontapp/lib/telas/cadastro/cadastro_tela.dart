import 'package:condominio_frontapp/widgets/menu_lateral.dart';
import 'package:flutter/material.dart';

class CadastroTela extends StatelessWidget {
  const CadastroTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro'), // 👈 título da tela
      ),
      drawer: const MenuLateral(),      // 👈 menu lateral
      body: const Center(
        child: Text(
          'Cadastro Tela',             // 👈 texto no centro mostrando o nome da tela
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}