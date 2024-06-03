import "package:flutter/material.dart";
import "package:subscribe_me/models/benefit.dart";

final class _BenefitItem {
  int index;
  var text = "";
  late Benefit benefit;
  late TextEditingController controller;

  _BenefitItem(this.index) {
    benefit = Benefit(index: index, description: text);
    controller = TextEditingController(text: text);
    controller.value = TextEditingValue(text: text);
  }
}

final class BenefitsProvider extends ChangeNotifier {
  var benefits = <_BenefitItem>[];

  BenefitsProvider({required int initalAmount}) {
    for (var index = 0; index < initalAmount; index++) {
      addBenefit(index);
    }
  }

  void addBenefit([int? index]) {
    index ??= benefits.length - 1;
    index = index < 0 ? 0 : index;

    if (benefits.length < 10) {
      var item = _BenefitItem(index);

      item.controller.addListener(() {
        item.benefit = item.benefit.copyWith(description: item.controller.text);
        item.text = item.benefit.description;
        item.controller = TextEditingController(text: item.text);
        item.controller.value = TextEditingValue(text: item.text);
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