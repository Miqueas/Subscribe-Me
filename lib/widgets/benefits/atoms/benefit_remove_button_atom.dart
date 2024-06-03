import 'package:flutter/material.dart';

class BenefitRemoveButtonAtom extends StatelessWidget {
  const BenefitRemoveButtonAtom({super.key, required this.trigger});

  final void Function()? trigger;

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: trigger, icon: const Icon(Icons.cancel));
  }
}