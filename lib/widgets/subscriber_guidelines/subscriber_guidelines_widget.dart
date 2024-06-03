import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:subscribe_me/controllers/subscriber_guidelines_controller.dart";
import "package:subscribe_me/widgets/subscriber_guidelines/molecules/subscriber_guidelines_molecule.dart";

class SubscriberGuidelinesWidget extends StatelessWidget {
  const SubscriberGuidelinesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) => SubscriberGuidelinesProvider(""),
    child: const SubscriberGuidelinesMolecule());
  }
}