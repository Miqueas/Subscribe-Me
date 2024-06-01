import "package:flutter/material.dart";

final class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Subscribe Me!",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text("Create subscriptions for your users, the right way",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: FilledButton.icon(
                  icon: const Icon(Icons.add),
                  label: const Text("New subscription"),
                  onPressed: () => Navigator.pushNamed(context, "/create_subscription"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}