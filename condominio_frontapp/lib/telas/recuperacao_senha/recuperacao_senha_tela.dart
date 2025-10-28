import 'package:condominio_frontapp/widgets/menu_lateral.dart';
import 'package:flutter/material.dart';

class RecuperacaoSenhaTela extends StatelessWidget {
  const RecuperacaoSenhaTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recuperação de Senha'), // 👈 título da tela
      ),
      drawer: const MenuLateral(),      // 👈 menu lateral
      body: const Center(
        child: Text(
          'Recuperação de Senha Tela',             // 👈 texto no centro mostrando o nome da tela
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}