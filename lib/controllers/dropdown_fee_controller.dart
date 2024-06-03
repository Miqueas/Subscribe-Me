import "package:flutter/material.dart";

final class DropdownProvider extends ChangeNotifier {
  double fee;

  DropdownProvider(this.fee);

  void setFee(double? value) {
    fee = value ?? fee;
    notifyListeners();
  }
}