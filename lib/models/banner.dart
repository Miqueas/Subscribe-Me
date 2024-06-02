import "package:freezed_annotation/freezed_annotation.dart";

part "banner.freezed.dart";
part "banner.g.dart";

@freezed
class Banner with _$Banner {
  const Banner._();

  const factory Banner({required String filePath}) = _Banner;

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
}