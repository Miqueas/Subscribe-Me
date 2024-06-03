import "package:flutter/material.dart";
import "package:subscribe_me/widgets/common/atoms/label.dart";
import "package:subscribe_me/widgets/description/atoms/description_input_atom.dart";

final class DescriptionMolecule extends StatelessWidget {
  const DescriptionMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Label(text: "Create a description for your subscription", padding: 40),
        DescriptionInputAtom()]);
  }  
}