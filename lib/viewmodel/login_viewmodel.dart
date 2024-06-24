// viewmodels/login_viewmodel.dart
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_app/ApiConstants.dart';

import '../network/models/login_response_entity.dart';
import '../services/ApiService.dart';
class LoginViewModel extends ChangeNotifier {
  final ApiService _apiService = ApiService();
  bool loading = false;
  String? errorMessage;



  Future<void> loginByEmail(BuildContext context,String email, String password) async {
    loading = true;
    errorMessage = null;
    notifyListeners();

    try {
      final response = await _apiService.post(ApiConstants.loginByEmail, data: {
        'email': email,
        'password': password,
      });

      if (response.statusCode == 200 && response.data != null) {
        final loginResponse = LoginResponseEntity.fromJson(response.data);
        if (loginResponse.status) {
          // Handle successful login
          print('Login Successful');
          Navigator.pushNamed(context, '/home');
        } else {
          errorMessage = loginResponse.message;
        }
      } else {
        errorMessage = 'Login failed: Invalid response from server';
      }
    } catch (e) {
      errorMessage = 'Login credentials are not correct';
    } finally {
      loading = false;
      notifyListeners();
    }
  }
}
