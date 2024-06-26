import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:subscribe_me/controllers/subscription_controller.dart";

class CreateSubscriptionPreviewButtonAtom extends StatelessWidget {
  const CreateSubscriptionPreviewButtonAtom({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SubscriptionProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          gradient: const LinearGradient(
            begin: Alignment.topLeft, end: Alignment.bottomRight,
            colors: [ Color(0xFF40068B), Color(0xFFAA03AA) ])),
        child: FilledButton(
          style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0x00FFFFFF))),
          child: const Text("Preview"),
          onPressed: () {
            print(provider.subscription);
          })));}}