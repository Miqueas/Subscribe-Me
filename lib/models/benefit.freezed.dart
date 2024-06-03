// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'benefit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Benefit _$BenefitFromJson(Map<String, dynamic> json) {
  return _Benefit.fromJson(json);
}

/// @nodoc
mixin _$Benefit {
  int get index => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BenefitCopyWith<Benefit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BenefitCopyWith<$Res> {
  factory $BenefitCopyWith(Benefit value, $Res Function(Benefit) then) =
      _$BenefitCopyWithImpl<$Res, Benefit>;
  @useResult
  $Res call({int index, String description});
}

/// @nodoc
class _$BenefitCopyWithImpl<$Res, $Val extends Benefit>
    implements $BenefitCopyWith<$Res> {
  _$BenefitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BenefitImplCopyWith<$Res> implements $BenefitCopyWith<$Res> {
  factory _$$BenefitImplCopyWith(
          _$BenefitImpl value, $Res Function(_$BenefitImpl) then) =
      __$$BenefitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, String description});
}

/// @nodoc
class __$$BenefitImplCopyWithImpl<$Res>
    extends _$BenefitCopyWithImpl<$Res, _$BenefitImpl>
    implements _$$BenefitImplCopyWith<$Res> {
  __$$BenefitImplCopyWithImpl(
      _$BenefitImpl _value, $Res Function(_$BenefitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? description = null,
  }) {
    return _then(_$BenefitImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BenefitImpl extends _Benefit {
  const _$BenefitImpl({required this.index, required this.description})
      : super._();

  factory _$BenefitImpl.fromJson(Map<String, dynamic> json) =>
      _$$BenefitImplFromJson(json);

  @override
  final int index;
  @override
  final String description;

  @override
  String toString() {
    return 'Benefit(index: $index, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BenefitImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BenefitImplCopyWith<_$BenefitImpl> get copyWith =>
      __$$BenefitImplCopyWithImpl<_$BenefitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BenefitImplToJson(
      this,
    );
  }
}

abstract class _Benefit extends Benefit {
  const factory _Benefit(
      {required final int index,
      required final String description}) = _$BenefitImpl;
  const _Benefit._() : super._();

  factory _Benefit.fromJson(Map<String, dynamic> json) = _$BenefitImpl.fromJson;

  @override
  int get index;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$BenefitImplCopyWith<_$BenefitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
