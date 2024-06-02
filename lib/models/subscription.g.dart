// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionImpl _$$SubscriptionImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SubscriptionImpl',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'banner',
            'name',
            'description',
            'fee',
            'benefits',
            'guidelines',
            'welcomeMessage'
          ],
        );
        final val = _$SubscriptionImpl(
          banner: $checkedConvert(
              'banner', (v) => Banner.fromJson(v as Map<String, dynamic>)),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          fee: $checkedConvert('fee', (v) => (v as num).toDouble()),
          benefits: $checkedConvert('benefits',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          guidelines: $checkedConvert('guidelines', (v) => v as String),
          welcomeMessage: $checkedConvert('welcomeMessage', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SubscriptionImplToJson(_$SubscriptionImpl instance) =>
    <String, dynamic>{
      'banner': instance.banner,
      'name': instance.name,
      'description': instance.description,
      'fee': instance.fee,
      'benefits': instance.benefits,
      'guidelines': instance.guidelines,
      'welcomeMessage': instance.welcomeMessage,
    };
