import 'package:flutter/material.dart';

class BenefitAddButtonAtom extends StatelessWidget {
  const BenefitAddButtonAtom({super.key, required this.trigger});

  final void Function()? trigger;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Expanded(child: FilledButton(onPressed: trigger, child: const Text("Add more")))]));
  }
}