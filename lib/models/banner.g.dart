// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerImpl _$$BannerImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$BannerImpl',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['filePath'],
        );
        final val = _$BannerImpl(
          filePath: $checkedConvert('filePath', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$BannerImplToJson(_$BannerImpl instance) =>
    <String, dynamic>{
      'filePath': instance.filePath,
    };
