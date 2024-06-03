import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:subscribe_me/controllers/dropdown_fee_controller.dart";
import "package:subscribe_me/widgets/dropdown_fee/molecules/dropdown_molecule.dart";

class DropdownWidget extends StatelessWidget {
  const DropdownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DropdownProvider(0),
      child: const DropdownMolecule());
  }
}