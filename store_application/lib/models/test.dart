// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

// https://marketplace.visualstudio.com/items?itemName=hzgood.dart-data-class-generator

class Test {
  String name;
  Test({
    required this.name,
  });

  Test copyWith({
    String? name,
  }) {
    return Test(
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory Test.fromMap(Map<String, dynamic> map) {
    return Test(
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Test.fromJson(String source) =>
      Test.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Test(name: $name)';

  @override
  bool operator ==(covariant Test other) {
    if (identical(this, other)) return true;

    return other.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}
