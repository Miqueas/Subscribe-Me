import "package:freezed_annotation/freezed_annotation.dart";
import "package:subscribe_me/models/banner_model.dart";

part "subscription_model.freezed.dart";
part "subscription_model.g.dart";

@freezed
class Subscription with _$Subscription {
  const Subscription._();

  const factory Subscription({
    required BannerModel banner,
    required String name,
    required String description,
    required double fee,
    required List<String> benefits,
    required String guidelines,
    required String welcomeMessage
  }) = _Subscription;

  factory Subscription.fromJson(Map<String, dynamic> json) => _$SubscriptionFromJson(json);
}