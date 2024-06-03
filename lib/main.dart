import "package:flutter/material.dart";
import "package:subscribe_me/theme/custom_theme.dart";
import "package:subscribe_me/screens/home.dart";
import "package:subscribe_me/screens/create_subscription.dart";

void main() => runApp(const SubscribeMe());

final class SubscribeMe extends StatelessWidget {
  const SubscribeMe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      darkTheme: theme,
      routes: { "/create_subscription": (context) => const CreateSubscriptionScreen() },
      home: const HomeScreen());
  }
}