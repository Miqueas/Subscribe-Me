// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return _Subscription.fromJson(json);
}

/// @nodoc
mixin _$Subscription {
  Banner get banner => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get fee => throw _privateConstructorUsedError;
  List<String> get benefits => throw _privateConstructorUsedError;
  String get guidelines => throw _privateConstructorUsedError;
  String get welcomeMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionCopyWith<Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCopyWith<$Res> {
  factory $SubscriptionCopyWith(
          Subscription value, $Res Function(Subscription) then) =
      _$SubscriptionCopyWithImpl<$Res, Subscription>;
  @useResult
  $Res call(
      {Banner banner,
      String name,
      String description,
      double fee,
      List<String> benefits,
      String guidelines,
      String welcomeMessage});

  $BannerCopyWith<$Res> get banner;
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res, $Val extends Subscription>
    implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banner = null,
    Object? name = null,
    Object? description = null,
    Object? fee = null,
    Object? benefits = null,
    Object? guidelines = null,
    Object? welcomeMessage = null,
  }) {
    return _then(_value.copyWith(
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as Banner,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as double,
      benefits: null == benefits
          ? _value.benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as List<String>,
      guidelines: null == guidelines
          ? _value.guidelines
          : guidelines // ignore: cast_nullable_to_non_nullable
              as String,
      welcomeMessage: null == welcomeMessage
          ? _value.welcomeMessage
          : welcomeMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BannerCopyWith<$Res> get banner {
    return $BannerCopyWith<$Res>(_value.banner, (value) {
      return _then(_value.copyWith(banner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubscriptionImplCopyWith<$Res>
    implements $SubscriptionCopyWith<$Res> {
  factory _$$SubscriptionImplCopyWith(
          _$SubscriptionImpl value, $Res Function(_$SubscriptionImpl) then) =
      __$$SubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Banner banner,
      String name,
      String description,
      double fee,
      List<String> benefits,
      String guidelines,
      String welcomeMessage});

  @override
  $BannerCopyWith<$Res> get banner;
}

/// @nodoc
class __$$SubscriptionImplCopyWithImpl<$Res>
    extends _$SubscriptionCopyWithImpl<$Res, _$SubscriptionImpl>
    implements _$$SubscriptionImplCopyWith<$Res> {
  __$$SubscriptionImplCopyWithImpl(
      _$SubscriptionImpl _value, $Res Function(_$SubscriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banner = null,
    Object? name = null,
    Object? description = null,
    Object? fee = null,
    Object? benefits = null,
    Object? guidelines = null,
    Object? welcomeMessage = null,
  }) {
    return _then(_$SubscriptionImpl(
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as Banner,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      fee: null == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as double,
      benefits: null == benefits
          ? _value._benefits
          : benefits // ignore: cast_nullable_to_non_nullable
              as List<String>,
      guidelines: null == guidelines
          ? _value.guidelines
          : guidelines // ignore: cast_nullable_to_non_nullable
              as String,
      welcomeMessage: null == welcomeMessage
          ? _value.welcomeMessage
          : welcomeMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionImpl extends _Subscription {
  const _$SubscriptionImpl(
      {required this.banner,
      required this.name,
      required this.description,
      required this.fee,
      required final List<String> benefits,
      required this.guidelines,
      required this.welcomeMessage})
      : _benefits = benefits,
        super._();

  factory _$SubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionImplFromJson(json);

  @override
  final Banner banner;
  @override
  final String name;
  @override
  final String description;
  @override
  final double fee;
  final List<String> _benefits;
  @override
  List<String> get benefits {
    if (_benefits is EqualUnmodifiableListView) return _benefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_benefits);
  }

  @override
  final String guidelines;
  @override
  final String welcomeMessage;

  @override
  String toString() {
    return 'Subscription(banner: $banner, name: $name, description: $description, fee: $fee, benefits: $benefits, guidelines: $guidelines, welcomeMessage: $welcomeMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionImpl &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            const DeepCollectionEquality().equals(other._benefits, _benefits) &&
            (identical(other.guidelines, guidelines) ||
                other.guidelines == guidelines) &&
            (identical(other.welcomeMessage, welcomeMessage) ||
                other.welcomeMessage == welcomeMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      banner,
      name,
      description,
      fee,
      const DeepCollectionEquality().hash(_benefits),
      guidelines,
      welcomeMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      __$$SubscriptionImplCopyWithImpl<_$SubscriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionImplToJson(
      this,
    );
  }
}

abstract class _Subscription extends Subscription {
  const factory _Subscription(
      {required final Banner banner,
      required final String name,
      required final String description,
      required final double fee,
      required final List<String> benefits,
      required final String guidelines,
      required final String welcomeMessage}) = _$SubscriptionImpl;
  const _Subscription._() : super._();

  factory _Subscription.fromJson(Map<String, dynamic> json) =
      _$SubscriptionImpl.fromJson;

  @override
  Banner get banner;
  @override
  String get name;
  @override
  String get description;
  @override
  double get fee;
  @override
  List<String> get benefits;
  @override
  String get guidelines;
  @override
  String get welcomeMessage;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
