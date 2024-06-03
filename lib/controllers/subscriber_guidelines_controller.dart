import 'package:flutter/material.dart';

final class SubscriberGuidelinesProvider extends ChangeNotifier {
  String guidelines;
  var controller = TextEditingController();

  SubscriberGuidelinesProvider(this.guidelines) {
    controller.addListener(() {
      guidelines = controller.text;
      notifyListeners();
    });
  }

  void setGuidelines(String text) {
    guidelines = text;
    notifyListeners();
  }
}