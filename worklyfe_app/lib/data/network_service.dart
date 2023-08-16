import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  ApiService() : _dio = Dio() {
    // Set up any default configurations for Dio here if needed.
    _dio.options.baseUrl = 'https://api.example.com'; // Replace with your API base URL.
  }

  // Define your API methods here.

  Future<dynamic> loginUser(String email, String password) async {
    try {
      final response = await _dio.post('/login', data: {
        'email': email,
        'password': password,
      });
      return response.data;
    } catch (e) {
      // Handle any errors that occur during the API call.
      throw Exception('Failed to login: $e');
    }
  }

  Future<dynamic> signupUser(String name, String email, String password) async {
    try {
      final response = await _dio.post('/signup', data: {
        'name': name,
        'email': email,
        'password': password,
      });
      return response.data;
    } catch (e) {
      throw Exception('Failed to signup: $e');
    }
  }

  Future<dynamic> forgotPassword(String email) async {
    try {
      final response = await _dio.post('/forgot_password', data: {
        'email': email,
      });
      return response.data;
    } catch (e) {
      throw Exception('Failed to reset password: $e');
    }
  }
}
