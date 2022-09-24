import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';

part 'order.g.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

@freezed
class Order with _$Order {
  const factory Order({
    @Default('') String id,
    required String name,
    required String status,
    required DateTime createdAt,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

final orderCollection =
    FirebaseFirestore.instance.collection('orders').withConverter<Order>(
          fromFirestore: (snapshot, _) => Order.fromJson(snapshot.data()!),
          toFirestore: (data, _) => data.toJson(),
        );
