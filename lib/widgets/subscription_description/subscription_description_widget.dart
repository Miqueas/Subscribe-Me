import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subscribe_me/controllers/subscription_description_controller.dart';
import 'package:subscribe_me/widgets/subscription_description/molecules/description_molecule.dart';

class SubscriptionDescriptionWidget extends StatelessWidget {
  const SubscriptionDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SubscriptionDescriptionProvider(""),
      child: const SubscriptionDescriptionMolecule(),
    );
  }
}