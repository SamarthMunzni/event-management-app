class User {
  final String id;
  final String name;
  final String email;
  final String? phone;
  final String? photoUrl;
  final String? bio;
  final List<String>? interests;
  final String? campus;
  final double trustScore;

  User({
    required this.id,
    required this.name,
    required this.email,
    this.phone,
    this.photoUrl,
    this.bio,
    this.interests,
    this.campus,
    required this.trustScore,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      photoUrl: json['photoUrl'] as String?,
      bio: json['bio'] as String?,
      interests: (json['interests'] as List<dynamic>?)?.cast<String>(),
      campus: json['campus'] as String?,
      trustScore: (json['trustScore'] as num?)?.toDouble() ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'photoUrl': photoUrl,
      'bio': bio,
      'interests': interests,
      'campus': campus,
      'trustScore': trustScore,
    };
  }
}
