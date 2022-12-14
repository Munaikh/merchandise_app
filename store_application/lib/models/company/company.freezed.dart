// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return _Company.fromJson(json);
}

/// @nodoc
mixin _$Company {
  String get id => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res>;
  $Res call(
      {String id, double balance, String logo, String ownerId, String name});
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res> implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  final Company _value;
  // ignore: unused_field
  final $Res Function(Company) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? balance = freezed,
    Object? logo = freezed,
    Object? ownerId = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CompanyCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$$_CompanyCopyWith(
          _$_Company value, $Res Function(_$_Company) then) =
      __$$_CompanyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, double balance, String logo, String ownerId, String name});
}

/// @nodoc
class __$$_CompanyCopyWithImpl<$Res> extends _$CompanyCopyWithImpl<$Res>
    implements _$$_CompanyCopyWith<$Res> {
  __$$_CompanyCopyWithImpl(_$_Company _value, $Res Function(_$_Company) _then)
      : super(_value, (v) => _then(v as _$_Company));

  @override
  _$_Company get _value => super._value as _$_Company;

  @override
  $Res call({
    Object? id = freezed,
    Object? balance = freezed,
    Object? logo = freezed,
    Object? ownerId = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Company(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Company implements _Company {
  const _$_Company(
      {this.id = '',
      required this.balance,
      required this.logo,
      required this.ownerId,
      required this.name});

  factory _$_Company.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  final double balance;
  @override
  final String logo;
  @override
  final String ownerId;
  @override
  final String name;

  @override
  String toString() {
    return 'Company(id: $id, balance: $balance, logo: $logo, ownerId: $ownerId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Company &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(logo),
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_CompanyCopyWith<_$_Company> get copyWith =>
      __$$_CompanyCopyWithImpl<_$_Company>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyToJson(
      this,
    );
  }
}

abstract class _Company implements Company {
  const factory _Company(
      {final String id,
      required final double balance,
      required final String logo,
      required final String ownerId,
      required final String name}) = _$_Company;

  factory _Company.fromJson(Map<String, dynamic> json) = _$_Company.fromJson;

  @override
  String get id;
  @override
  double get balance;
  @override
  String get logo;
  @override
  String get ownerId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyCopyWith<_$_Company> get copyWith =>
      throw _privateConstructorUsedError;
}
