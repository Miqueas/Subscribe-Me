import "package:flutter/material.dart";
import "package:subscribe_me/widgets/create_subscription/create_subscription_widget.dart";

final class CreateSubscriptionScreen extends StatelessWidget {
  const CreateSubscriptionScreen({super.key});

  static const routeName = "/create_subscription";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [ 0.02, 0.2, 1 ],
          colors: [Color(0xFF0B011F), Color(0xFF220227), Color(0xFF0F0013)])),
        child: Scaffold(
          backgroundColor: const Color(0x00000000),
          appBar: AppBar(
            shadowColor: const Color(0xFF16161b),
            backgroundColor: const Color(0x00000000),
            title: const Text("Subscription Creation", style: TextStyle(fontWeight: FontWeight.bold)),
            centerTitle: true),
          body: const CreateSubscriptionWidget())));}}