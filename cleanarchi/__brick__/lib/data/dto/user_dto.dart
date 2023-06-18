class UserDto {
  UserDto({this.id, this.name, this.email, this.gender, this.status});

  factory UserDto.fromJson(Map<String, dynamic> json) => UserDto(
        id: json['id'] as int?,
        name: json['name'] as String?,
        email: json['email'] as String?,
        gender: json['gender'] as String?,
        status: json['status'] as String?,
      );

  int? id;
  String? name;
  String? email;
  String? gender;
  String? status;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'gender': gender,
        'status': status,
      };
}
