// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerModelImpl _$$BannerModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$BannerModelImpl',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['filePath'],
        );
        final val = _$BannerModelImpl(
          filePath: $checkedConvert('filePath', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BannerModelImplToJson(_$BannerModelImpl instance) =>
    <String, dynamic>{
      'filePath': instance.filePath,
    };
