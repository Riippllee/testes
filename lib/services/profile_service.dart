import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/profile_model.dart';

class ProfileService {
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<ProfileModel> getProfile(String userId) async {
    final data = await _supabase
        .from('profiles')
        .select()
        .eq('user_id', userId)
        .single();

    return ProfileModel.fromJson(data);
  }
}