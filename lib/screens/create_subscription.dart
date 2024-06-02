import "package:flutter/material.dart";
import "package:subscribe_me/widgets/banner/molecules/banner_molecule.dart";
import "package:subscribe_me/widgets/dropdown/atoms/dropdown.dart";

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
              const BannerMolecule(),
              const DropdownAtom(),
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text("Create a description for your subscription"),
              ),
              const TextField(),
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text("Briefly describe the benefits of your subscription (Max 10)"),
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  const TextField(),
                  const TextField(),
                  const TextField(),
                  FilledButton(
                    child: const Text("Add more"),
                    onPressed: () {},
                  )
                ],
              ),
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