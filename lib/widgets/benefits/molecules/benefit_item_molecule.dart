import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:subscribe_me/controllers/benefits_controller.dart";
import "package:subscribe_me/controllers/subscription_controller.dart";
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
    final subscriptionProvider = Provider.of<SubscriptionProvider>(context);
    final provider = Provider.of<BenefitsProvider>(context);

    return Row(
      children: [
        BenefitInputAtom(index: index, controller: controller, onChanged: (text) {
          provider.setBenefit(index, text);
          subscriptionProvider.setBenefits(provider.benefits.map((e) => e.benefit.description).toList());}),
        BenefitRemoveButtonAtom(trigger: trigger),
      ],
    );
  }
}