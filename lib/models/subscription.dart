import "package:freezed_annotation/freezed_annotation.dart";
import "package:subscribe_me/models/banner.dart";

part "subscription.freezed.dart";
part "subscription.g.dart";

@freezed
class Subscription with _$Subscription {
  const Subscription._();

  const factory Subscription({
    required Banner banner,
    required String name,
    required String description,
    required double fee,
    required List<String> benefits,
    required String guidelines,
    required String welcomeMessage
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);
}