import 'package:dio/dio.dart';
import 'package:test_app/ApiConstants.dart';

import '../network/models/login_response_entity.dart';
import 'ApiService.dart';


class LoginService {
  final ApiService _apiService = ApiService();

  Future<LoginResponseEntity> loginByEmail(String email, String password) async {
    final response = await _apiService.post(ApiConstants.loginByEmail, data: {
      'email': email,
      'password': password,
    });

    if (response.statusCode == 200) {
      return LoginResponseEntity.fromJson(response.data);
    } else {
      throw Exception('Failed to login');
    }
  }
}
