import "package:flutter/material.dart";
import "package:subscribe_me/models/benefit.dart";

final class _BenefitItem {
  late Benefit benefit;
  late TextEditingController controller;

  _BenefitItem(int index) {
    benefit = Benefit(index: index, description: "");
    controller = TextEditingController();
  }
}

final class BenefitsProvider extends ChangeNotifier {
  var benefits = <_BenefitItem>[];

  BenefitsProvider({required int initalAmount}) {
    for (var index = 0; index < initalAmount; index++) {
      addBenefit(index);
    }
  }

  void setBenefit(int index, String text) {
    benefits[index].benefit = benefits[index].benefit.copyWith(description: text);
    benefits[index].controller.text = text;
    benefits[index].controller.value = TextEditingValue(text: text);
    notifyListeners();
  }

  void addBenefit([int? index]) {
    index ??= benefits.length - 1;
    index = index < 0 ? 0 : index;

    if (benefits.length < 10) {
      var item = _BenefitItem(index);

      item.controller.addListener(() {
        item.benefit = item.benefit.copyWith(description: item.controller.text);
        notifyListeners();
      });

      benefits.add(item);
      notifyListeners();
    }
  }

  void removeBenefit(int? index) {
    index ??= benefits.length - 1;
    benefits.removeAt(index);
    notifyListeners();
  }
}