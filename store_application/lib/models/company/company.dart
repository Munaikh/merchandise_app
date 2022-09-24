import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';

part 'company.g.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

@freezed
class Company with _$Company {
  const factory Company({
    @Default('') String id,
    required double balance,
    required String logo,
    required String ownerId,
    required String name,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}

final orderCollection =
    FirebaseFirestore.instance.collection('companies').withConverter<Company>(
          fromFirestore: (snapshot, _) => Company.fromJson(snapshot.data()!),
          toFirestore: (data, _) => data.toJson(),
        );
