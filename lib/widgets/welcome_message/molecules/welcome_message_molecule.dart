import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:subscribe_me/controllers/subscription_controller.dart";
import "package:subscribe_me/controllers/welcome_message_controller.dart";
import "package:subscribe_me/widgets/common/atoms/input_atom.dart";
import "package:subscribe_me/widgets/common/atoms/label_atom.dart";

class WelcomeMessageMolecule extends StatelessWidget {
  const WelcomeMessageMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    final subscriptionProvider = Provider.of<SubscriptionProvider>(context);
    final provider = Provider.of<WelcomeMessageProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LabelAtom(text: "Welcome message", padding: 30),
        InputAtom(
          controller: provider.controller,
          onChanged: (text) {
            provider.setMessage(text);
            subscriptionProvider.setWelcomeMessage(provider.message);})]);
  }
}