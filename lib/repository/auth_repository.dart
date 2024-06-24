
import 'package:test_app/network/models/login_response_entity.dart';

import '../ApiConstants.dart';
import '../services/ApiService.dart';


class AuthRepository {
  final ApiService _apiService = ApiService();
  Future<LoginResponseEntity> loginByEmail(String email, String password) async {
      final response = await _apiService.post(ApiConstants.loginByEmail, data: {
        'email': email,
        'password': password,
      });
      try {
      if (response.statusCode == 200) {
        return LoginResponseEntity.fromJson(response.data);
      } else {
        throw Exception('Failed to login: ${response.statusMessage}');
      }
    } catch (e) {
      throw Exception('Login failed: $e');
    }
  }
}
