class EmpDataModel {
  final String id;
  final String name;
  final String createdAt;
  final String avatar;
  final String email;
  final String phone;
  final List<String> department;
  final String birthday;
  final String country;

  EmpDataModel({
    required this.createdAt,
    required this.name,
    required this.avatar,
    required this.email,
    required this.phone,
    required this.department,
    required this.birthday,
    required this.country,
    required this.id,
  });

  factory EmpDataModel.fromJson(Map<String, dynamic> json) {
    return EmpDataModel(
      createdAt: json['createdAt'] ?? '',
      name: json['name'] ?? '',
      avatar: json['avatar'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      department: List<String>.from(json["department"].map((x) => x) ?? ''),
      birthday: json['birthday'] ?? '',
      country: json["country"] ?? '',
      id: json["id"] ?? '',
    );
  }
}
