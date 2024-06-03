import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:subscribe_me/widgets/common/atoms/input_atom.dart";
import "package:subscribe_me/widgets/common/atoms/label_atom.dart";

final class DescriptionMolecule extends StatelessWidget {
  const DescriptionMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LabelAtom(text: "Create a description for your subscription", padding: 40),
        InputAtom(controller: TextEditingController())]);
  }
}