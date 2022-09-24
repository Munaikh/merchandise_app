import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quttaiatGateway.freezed.dart';

part 'quttaiatGateway.g.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

@freezed
class QuttaiatGateway with _$QuttaiatGateway {
  const factory QuttaiatGateway({
    @Default('') String id,
    required String ownerId,
    required int numberOfUser,
    @Default([]) List<String> accounts,
    required String companyId,
    @Default('Coded Shalleh') String productName,
    @Default(400) double totalPrice,
    @Default('PENDING') String status,
    @Default('https://www.q8seacity.com/uploads/409147.jpeg') String productImg,
  }) = _QuttaiatGateway;

  factory QuttaiatGateway.fromJson(Map<String, dynamic> json) =>
      _$QuttaiatGatewayFromJson(json);
}

final orderCollection = FirebaseFirestore.instance
    .collection('quttaiatGateway')
    .withConverter<QuttaiatGateway>(
      fromFirestore: (snapshot, _) =>
          QuttaiatGateway.fromJson(snapshot.data()!),
      toFirestore: (data, _) => data.toJson(),
    );
