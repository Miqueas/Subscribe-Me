import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:subscribe_me/controllers/subscriber_guidelines_controller.dart";
import "package:subscribe_me/controllers/subscription_controller.dart";
import "package:subscribe_me/widgets/common/atoms/label_atom.dart";
import "package:subscribe_me/widgets/common/atoms/input_atom.dart";

class SubscriberGuidelinesMolecule extends StatelessWidget {
  const SubscriberGuidelinesMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    final subscriptionProvider = Provider.of<SubscriptionProvider>(context);
    final provider = Provider.of<SubscriberGuidelinesProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LabelAtom(text: "Subscriber guidelines", padding: 40),
        InputAtom(
          controller: provider.controller,
          onChanged: (text) {
            provider.setGuidelines(text);
            subscriptionProvider.setGuidelines(provider.guidelines);})]);
  }
}