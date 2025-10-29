// Login, autenticação, token
// /login, /usuario/email, /codigo

import 'package:dio/dio.dart';
import '/../models/login_dto.dart';

class AuthRepository {
  final Dio dio;

  AuthRepository({Dio? dio}) : dio = dio ?? Dio(BaseOptions(baseUrl: ''));

  Future<LoginDto?> login(String email, String senha) async {
    try {
      final response = await dio.post(
          '/login', data: {'email': email, 'senha': senha});

      if (response.statusCode == 200) {
        return LoginDto.fromJson(response.data);
      } else {
        throw Exception('Falha ao fazer login');
      }
    } on DioException catch (e) {
      throw Exception('Falha ao fazer login: Não conectado ao back ainda.${e.message}');
    }
  }
}

