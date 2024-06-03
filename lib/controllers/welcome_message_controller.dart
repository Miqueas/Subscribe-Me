import 'package:flutter/material.dart';

final class WelcomeMessageProvider extends ChangeNotifier {
  String message;
  var controller = TextEditingController();

  WelcomeMessageProvider(this.message) {
    controller.addListener(() {
      message = controller.text;
      notifyListeners();
    });
  }

  void setMessage(String text) {
    message = text;
    notifyListeners();
  }
}