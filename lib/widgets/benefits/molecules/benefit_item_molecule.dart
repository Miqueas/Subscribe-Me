import "package:flutter/material.dart";
import "package:subscribe_me/widgets/benefits/atoms/benefit_input_atom.dart";
import "package:subscribe_me/widgets/benefits/atoms/benefit_remove_button_atom.dart";

class BenefitItemMolecule extends StatelessWidget {
  const BenefitItemMolecule({
    super.key,
    required this.index,
    required this.trigger,
    required this.controller
  });

  final int index;
  final TextEditingController controller;
  final void Function()? trigger;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BenefitInputAtom(index: index, controller: controller),
        BenefitRemoveButtonAtom(trigger: trigger),
      ],
    );
  }
}