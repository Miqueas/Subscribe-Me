import "package:flutter/material.dart";

final class CreateSubscriptionScreen extends StatelessWidget {
  const CreateSubscriptionScreen({super.key});

  static const routeName = "/create_subscription";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Subscription Creation"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Upload a \"Welcome\" Video or Picture (Optional)"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 160,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromRGBO(255, 255, 255, 0.07),
                            ),
                            child: const Icon(Icons.add),
                          ),
                          onTap: () {},
                        ),
                      )
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40),
                child: Text("Set your monthly subscription fee"),
              ),
              DropdownMenu(
                inputDecorationTheme: InputDecorationTheme(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                expandedInsets: const EdgeInsets.symmetric(),
                hintText: "Specify it here...",
                dropdownMenuEntries: const [
                  DropdownMenuEntry<double>(value: 5.99, label: "\$5.99"),
                  DropdownMenuEntry<double>(value: 9.99, label: "\$9.99"),
                ]
              ),
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