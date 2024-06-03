import "package:flutter/foundation.dart";
import "package:subscribe_me/models/banner_model.dart";
import "package:subscribe_me/models/subscription_model.dart";

final class SubscriptionProvider extends ChangeNotifier {
  Subscription sub;

  SubscriptionProvider(this.sub);

  void setBanner(BannerModel banner) {
    sub = sub.copyWith(banner: banner);
    notifyListeners();
  }

  void setName(String name) {
    sub = sub.copyWith(name: name);
    notifyListeners();
  }

  void setDescription(String description) {
    sub = sub.copyWith(description: description);
    notifyListeners();
  }

  void setFee(double fee) {
    sub = sub.copyWith(fee: fee);
    notifyListeners();
  }

  void setBenefits(List<String> benefits) {
    sub = sub.copyWith(benefits: benefits);
    notifyListeners();
  }

  void setGuidelines(String guidelines) {
    sub = sub.copyWith(guidelines: guidelines);
    notifyListeners();
  }

  void setWelcomeMessage(String welcomeMessage) {
    sub = sub.copyWith(welcomeMessage: welcomeMessage);
    notifyListeners();
  }
}