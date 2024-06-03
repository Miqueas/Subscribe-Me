import 'package:flutter/material.dart';

final class SubscriptionDescriptionProvider extends ChangeNotifier {
  String description;
  var controller = TextEditingController();

  SubscriptionDescriptionProvider(this.description) {
    controller.addListener(() {
      description = controller.text;
      notifyListeners();
    });
  }

  void setDescription(String? text) {
    description = text ?? description;
    controller.text = description;
    controller.value = TextEditingValue(text: description);
    notifyListeners();
  }
}