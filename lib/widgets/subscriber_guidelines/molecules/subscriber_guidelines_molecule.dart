import "package:flutter/material.dart";
import "package:subscribe_me/widgets/common/atoms/label_atom.dart";
import "package:subscribe_me/widgets/common/atoms/input_atom.dart";

class SubscriberGuidelinesMolecule extends StatelessWidget {
  const SubscriberGuidelinesMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LabelAtom(text: "Subscriber guidelines", padding: 40),
        InputAtom(controller: TextEditingController())]);
  }
}