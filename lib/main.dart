import "package:flutter/material.dart";

import "package:subscribe_me/theme/custom_theme.dart";
import "package:subscribe_me/screens/home.dart";

void main() => runApp(const SubscribeMe());

final class SubscribeMe extends StatelessWidget {
  const SubscribeMe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildTheme(),
      routes: {
        "/create_subscription": (context) => Material(
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Subscription Creation"),
              centerTitle: true,
            ),
            body: const Column(),
          )
        ),
      },
      home: const HomeScreen(),
    );
  }
}