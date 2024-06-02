import "package:flutter/material.dart";
import "package:subscribe_me/widgets/banner/banner_widget.dart";
import "package:subscribe_me/widgets/benefits/molecules/benefits_molecule.dart";
import "package:subscribe_me/widgets/description/molecules/description.dart";
import "package:subscribe_me/widgets/dropdown/molecules/dropdown.dart";

final class CreateSubscriptionScreen extends StatelessWidget {
  const CreateSubscriptionScreen({super.key});

  static const routeName = "/create_subscription";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Subscription Creation", style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              const BannerWidget(),
              const DropdownMolecule(),
              const DescriptionMolecule(),
              const BenefitsMolecule(),
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
      )
    );
  }
}