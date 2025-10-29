class LoginDto {
  final String email;
  final String senha;

  final String? token;

  LoginDto({
    required this.email,
    required this.senha,
    this.token,
});

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'senha': senha,
    };
  }

  factory LoginDto.fromJson(Map<String, dynamic> json) {
    return LoginDto(
      email: json['email'] ?? '',
      senha: '',
      token: json['token'],
    );
  }
}