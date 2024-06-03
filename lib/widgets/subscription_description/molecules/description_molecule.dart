import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:provider/provider.dart";
import "package:subscribe_me/controllers/subscription_controller.dart";
import "package:subscribe_me/controllers/subscription_description_controller.dart";
import "package:subscribe_me/widgets/common/atoms/input_atom.dart";
import "package:subscribe_me/widgets/common/atoms/label_atom.dart";

final class SubscriptionDescriptionMolecule extends StatelessWidget {
  const SubscriptionDescriptionMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    final subscriptionProvider = Provider.of<SubscriptionProvider>(context);
    final provider = Provider.of<SubscriptionDescriptionProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LabelAtom(text: "Create a description for your subscription", padding: 40),
        InputAtom(
          controller: provider.controller,
          onChanged: (text) {
            provider.setDescription(text);
            subscriptionProvider.setDescription(provider.description);})]);
  }
}