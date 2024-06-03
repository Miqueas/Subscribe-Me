import "package:flutter/material.dart";

final class DropdownProvider extends ChangeNotifier {
  double fee;
  var controller = TextEditingController();

  DropdownProvider(this.fee) {
    controller.addListener(() {
      fee = double.parse(controller.text);
    });
  }

  void setFee(double fee) {
    this.fee = fee;
    notifyListeners();
  }
}