class ProfileModel {
  final String userId;
  final String name;
  final String role;
  final String? photoUrl;

  ProfileModel({
    required this.userId,
    required this.name,
    required this.role,
    this.photoUrl,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) {
    return ProfileModel(
      userId: json['user_id'] as String,
      name: json['name'] as String,
      role: json['role'] as String,
      photoUrl: json['photo_url'] as String?,
    );
  }
}