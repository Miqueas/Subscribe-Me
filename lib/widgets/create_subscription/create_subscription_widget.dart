import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:subscribe_me/controllers/subscription_controller.dart";
import "package:subscribe_me/models/banner_model.dart";
import "package:subscribe_me/models/subscription_model.dart";
import "package:subscribe_me/widgets/create_subscription/organisms/create_subscription_organism.dart";

class CreateSubscriptionWidget extends StatelessWidget {
  const CreateSubscriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SubscriptionProvider(const Subscription(
        banner: BannerModel(filePath: ""),
        name: "", description: "", fee: 0.0,
        benefits: [], guidelines: "",
        welcomeMessage: "")),
      child: const CreateSubscriptionOrganism());
  }
}