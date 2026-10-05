import 'package:supabase_flutter/supabase_flutter.dart';
import '../services/auth_service.dart';
import '../services/profile_service.dart';
import '../models/profile_model.dart';

class AuthController {
  final AuthService _authService = AuthService();
  final ProfileService _profileService = ProfileService();

  Future<ProfileModel> getProfile(String userId) async {
  return await _profileService.getProfile(userId);
}

  Future<AuthResponse> register({
    required String name,
    required String email,
    required String password,
  }) async {
    return await _authService.register(
      name: name,
      email: email,
      password: password,
    );
  }


  Future<AuthResponse> login({
  required String email,
  required String password,
  }) async {
    return await _authService.login(
      email: email,
      password: password,
    );
  }

  String getErrorMessage(Object error) {
  if (error is AuthException) {
    switch (error.code) {
      case 'email_address_invalid':
        return 'Alamat email tidak valid.';

      case 'over_email_send_rate_limit':
        return 'Terlalu banyak percobaan. Silakan coba lagi nanti.';

      case 'invalid_credentials':
        return 'Email atau password salah.';

      case 'email_not_confirmed':
        return 'Email belum dikonfirmasi. Silakan cek email Anda.';

      default:
        return error.message;
    }
  }

  return 'Terjadi kesalahan. Silakan coba lagi.';
}
}