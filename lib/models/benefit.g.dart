// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'benefit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BenefitImpl _$$BenefitImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$BenefitImpl',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['index', 'description'],
        );
        final val = _$BenefitImpl(
          index: $checkedConvert('index', (v) => (v as num).toInt()),
          description: $checkedConvert('description', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BenefitImplToJson(_$BenefitImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'description': instance.description,
    };
