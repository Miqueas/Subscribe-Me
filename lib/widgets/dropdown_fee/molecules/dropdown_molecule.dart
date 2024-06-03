import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:subscribe_me/controllers/dropdown_fee_controller.dart";
import "package:subscribe_me/widgets/common/atoms/label_atom.dart";
import "package:subscribe_me/widgets/dropdown_fee/atoms/dropdown_menu_atom.dart";

final class DropdownMolecule extends StatelessWidget {
  const DropdownMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<DropdownProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LabelAtom(text: "Set your monthly subscription fee", padding: 40),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: DropdownMenuAtom(controller: provider.controller))]);
  }
}