import 'package:flutter/material.dart';
import '../telas/cadastro/cadastro_tela.dart';
import '../telas/dashboard/dashboard_tela.dart';
import '../telas/detalhes_solicitacao/detalhes_solicitacao_tela.dart';
import '../telas/gerenciar_usuario/gerenciar_usuario_tela.dart';
import '../telas/login/login_tela.dart';
import '../telas/nova_solicitacao/nova_solicitacao_tela.dart';
import '../telas/perfil/perfil_tela.dart';
import '../telas/recuperacao_senha/recuperacao_senha_tela.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('Cadastro'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const CadastroTela()),
              );
            },
          ),
          ListTile(
            title: const Text('Dashboard'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const DashboardTela()),
              );
            },
          ),
          ListTile(
            title: const Text('Detalhes da Solicitação'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const DetalhesSolicitacaoTela()),
              );
            },
          ),
          ListTile(
            title: const Text('Gerenciar Usuários'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const GerenciarUsuarioTela()),
              );
            },
          ),
          ListTile(
            title: const Text('Login'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginTela()),
              );
            },
          ),
          ListTile(
            title: const Text('Nova Solicitação'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const NovaSolicitacaoTela()),
              );
            },
          ),
          ListTile(
            title: const Text('Perfil'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const PerfilTela()),
              );
            },
          ),
          ListTile(
            title: const Text('Recuperação de Senha'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const RecuperacaoSenhaTela()),
              );
            },
          ),
        ],
      ),
    );
  }
}