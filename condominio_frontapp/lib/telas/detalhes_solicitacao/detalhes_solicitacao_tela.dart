import 'package:condominio_frontapp/widgets/menu_lateral.dart';
import 'package:flutter/material.dart';


class DetalhesSolicitacaoTela extends StatelessWidget {
  const DetalhesSolicitacaoTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes'),
      ),
      drawer: const MenuLateral(),
      body: const Center(
        child: Text(
          'Detalhes da Solicitação Tela',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}