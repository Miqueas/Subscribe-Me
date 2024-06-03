import "package:flutter/foundation.dart";
import "package:subscribe_me/models/banner_model.dart";
import "package:subscribe_me/models/subscription_model.dart";

final class SubscriptionProvider extends ChangeNotifier {
  Subscription subscription;

  SubscriptionProvider(this.subscription);

  void setBanner(BannerModel banner) {
    subscription = subscription.copyWith(banner: banner);
    notifyListeners();
  }

  void setName(String name) {
    subscription = subscription.copyWith(name: name);
    notifyListeners();
  }

  void setDescription(String description) {
    subscription = subscription.copyWith(description: description);
    notifyListeners();
  }

  void setFee(double fee) {
    subscription = subscription.copyWith(fee: fee);
    notifyListeners();
  }

  void setBenefits(List<String> benefits) {
    subscription = subscription.copyWith(benefits: benefits);
    notifyListeners();
  }

  void setGuidelines(String guidelines) {
    subscription = subscription.copyWith(guidelines: guidelines);
    notifyListeners();
  }

  void setWelcomeMessage(String welcomeMessage) {
    subscription = subscription.copyWith(welcomeMessage: welcomeMessage);
    notifyListeners();
  }
}