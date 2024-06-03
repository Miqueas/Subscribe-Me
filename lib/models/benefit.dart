import "package:freezed_annotation/freezed_annotation.dart";

part "benefit.freezed.dart";
part "benefit.g.dart";

@freezed
class Benefit with _$Benefit {
  const Benefit._();

  const factory Benefit({required int index, required String description}) = _Benefit;

  factory Benefit.fromJson(Map<String, dynamic> json) => _$BenefitFromJson(json);
}