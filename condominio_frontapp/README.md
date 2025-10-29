# condominio_frontapp

App Mobile para gerenciamento e notificação de solicitações de manutenção.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## Informações sobre as pastas que utilizaremos no nosso projeto

- **lib/**: Aqui fica todo o código do nosso app.
    - **api_client.dart**: É onde configuramos o Dio e o Logger, que servem para se comunicar com o back-end e mostrar detalhes da comunicação.
        - **repository/**: Dentro dos repositóry estão os arquivos que usam dio para mandar e receber os dados do back.
    - **models/**: Aqui ficam os arquivos das “entidades” do projeto.  
      Esses arquivos ajudam a transformar os dados que vêm do back (JSON) em objetos do Dart, e também de Dart para JSON.  
      O login entra aqui porque tem dados sensíveis.
    - **telas/**: Onde ficam as telas do app.  
      No Flutter, cada tela é formada por vários widgets.
    - **widgets/**: Componentes que usamos em mais de uma tela, para não repetir código e manter tudo organizado.

- **pubspec.yaml**: Arquivo que diz quais tecnologias estamos usando no projeto.  
  Também serve para configurar imagens, fontes e outros recursos do app.