import "package:flutter/material.dart";
import "package:subscribe_me/widgets/banner/banner_widget.dart";
import "package:subscribe_me/widgets/benefits/benefits_widget.dart";
import "package:subscribe_me/widgets/create_subscription/atoms/create_subscription_preview_button_atom.dart";
import "package:subscribe_me/widgets/subscriber_guidelines/subscriber_guidelines_widget.dart";
import "package:subscribe_me/widgets/subscription_description/molecules/description_molecule.dart";
import "package:subscribe_me/widgets/dropdown_fee/dropdown_widget.dart";
import "package:subscribe_me/widgets/welcome_message/welcome_message_widget.dart";

class CreateSubscriptionOrganism extends StatelessWidget {
  const CreateSubscriptionOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView(
        shrinkWrap: true,
        children: const [
          BannerWidget(),
          DropdownWidget(),
          DescriptionMolecule(),
          BenefitsWidget(),
          SubscriberGuidelinesWidget(),
          WelcomeMessageWidget(),
          CreateSubscriptionPreviewButtonAtom()]));}}