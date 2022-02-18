import 'dart:convert';

class TalkModel {
  String name;
  String message;
  String imagePath;
  TalkModel({
    this.name = "",
    this.message = "",
    this.imagePath = "",
  });

  TalkModel copyWith({
    String? name,
    String? message,
    String? imagePath,
  }) {
    return TalkModel(
      name: name ?? this.name,
      message: message ?? this.message,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'message': message,
      'imagePath': imagePath,
    };
  }

  factory TalkModel.fromMap(Map<String, dynamic> map) {
    return TalkModel(
      name: map['name'] ?? '',
      message: map['message'] ?? '',
      imagePath: map['imagePath'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TalkModel.fromJson(String source) =>
      TalkModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'TalkModel(name: $name, message: $message, imagePath: $imagePath)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TalkModel &&
        other.name == name &&
        other.message == message &&
        other.imagePath == imagePath;
  }

  @override
  int get hashCode => name.hashCode ^ message.hashCode ^ imagePath.hashCode;
}
