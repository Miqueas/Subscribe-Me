import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:subscribe_me/controllers/welcome_message_controller.dart";
import "package:subscribe_me/widgets/welcome_message/molecules/welcome_message_molecule.dart";

class WelcomeMessageWidget extends StatelessWidget {
  const WelcomeMessageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_) => WelcomeMessageProvider(""),
      child: const WelcomeMessageMolecule());
  }
}