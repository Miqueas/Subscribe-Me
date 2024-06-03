import "package:flutter/material.dart";

final class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routeName = "/";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [ 0.02, 0.2, 1 ],
            colors: [
              Color.fromARGB(255, 11, 1, 31),
              Color.fromARGB(255, 34, 2, 39),
              Color.fromARGB(255, 15, 0, 19)])),
          alignment: Alignment.center,
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
                  fontSize: 14,
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