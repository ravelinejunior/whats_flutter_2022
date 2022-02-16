import 'dart:convert';

class UserModel {
  String? name;
  String? email;
  String? age;
  String? phone;
  String? password;
  String? confirmPassword;
  UserModel({
    this.name = "",
    this.email = "",
    this.age = "",
    this.phone = "",
    this.password = "",
    this.confirmPassword = "",
  });

  UserModel copyWith({
    String? name,
    String? email,
    String? age,
    String? phone,
    String? password,
    String? confirmPassword,
  }) {
    return UserModel(
      name: name ?? this.name,
      email: email ?? this.email,
      age: age ?? this.age,
      phone: phone ?? this.phone,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'age': age,
      'phone': phone,
      'password': password,
      'confirmPassword': confirmPassword,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      age: map['age'] ?? '',
      phone: map['phone'] ?? '',
      password: map['password'] ?? '',
      confirmPassword: map['confirmPassword'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'name: $name\nemail: $email\nage: $age\nphone: $phone\npassword: $password\nconfirmPassword: $confirmPassword';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.name == name &&
        other.email == email &&
        other.age == age &&
        other.phone == phone &&
        other.password == password &&
        other.confirmPassword == confirmPassword;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        email.hashCode ^
        age.hashCode ^
        phone.hashCode ^
        password.hashCode ^
        confirmPassword.hashCode;
  }
}
