import "package:flutter/material.dart";

class HomeNewButtonAtom extends StatelessWidget {
  const HomeNewButtonAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          gradient: const LinearGradient(
            begin: Alignment.topLeft, end: Alignment.bottomRight,
            colors: [ Color(0xFF40068B), Color(0xFFAA03AA) ])),
        child: FilledButton.icon(
          style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0x00FFFFFF))),
          icon: const Icon(Icons.add),
          label: const Text("New subscription"),
          onPressed: () => Navigator.pushNamed(context, "/create_subscription"))));}}