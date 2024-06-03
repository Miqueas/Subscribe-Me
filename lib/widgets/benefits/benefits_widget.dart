import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subscribe_me/controllers/benefits_controller.dart';
import 'package:subscribe_me/widgets/benefits/organisms/benefits_organism.dart';

class BenefitsWidget extends StatelessWidget {
  const BenefitsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BenefitsProvider(initalAmount: 3),
      child: const BenefitsOrganism(),
    );
  }
}