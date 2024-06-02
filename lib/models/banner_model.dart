import "package:freezed_annotation/freezed_annotation.dart";

part "banner_model.freezed.dart";
part "banner_model.g.dart";

@freezed
class BannerModel with _$BannerModel {
  const BannerModel._();

  const factory BannerModel({required String filePath}) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) => _$BannerModelFromJson(json);
}