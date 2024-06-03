import "package:flutter/material.dart";
import "package:subscribe_me/widgets/banner/banner_widget.dart";
import "package:subscribe_me/widgets/benefits/benefits_widget.dart";
import "package:subscribe_me/widgets/description/molecules/description.dart";
import "package:subscribe_me/widgets/dropdown/molecules/dropdown.dart";

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
          colors: [
            Color(0xFF0B011F),
            Color(0xFF220227),
            Color(0xFF0F0013)])),
        child: Scaffold(
          backgroundColor: const Color(0x00000000),
          appBar: AppBar(
            shadowColor: const Color(0xFF16161b),
            backgroundColor: const Color(0x00000000),
            title: const Text("Subscription Creation", style: TextStyle(fontWeight: FontWeight.bold)),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              shrinkWrap: true,
              children: [
                const BannerWidget(),
                const DropdownMolecule(),
                const DescriptionMolecule(),
                const BenefitsWidget(),
                const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Text("Subscriber Guidelines"),
                ),
                const TextField(),
                const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Text("Welcome Message"),
                ),
                const TextField(),
                FilledButton(
                  child: const Text("Preview"),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}