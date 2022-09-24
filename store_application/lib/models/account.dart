import 'dart:convert';

class Account {
  String email;
  String name;
  Account({
    required this.email,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'name': name,
    };
  }

  factory Account.fromMap(Map<String, dynamic> map) {
    return Account(
      email: map['email'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Account.fromJson(String source) =>
      Account.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Account(email: $email, name: $name)';

  @override
  bool operator ==(covariant Account other) {
    if (identical(this, other)) return true;

    return other.email == email && other.name == name;
  }

  @override
  int get hashCode => email.hashCode ^ name.hashCode;
}
