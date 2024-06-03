import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:provider/provider.dart";
import "package:subscribe_me/controllers/benefits_controller.dart";
import "package:subscribe_me/widgets/benefits/atoms/benefit_add_button_atom.dart";
import "package:subscribe_me/widgets/benefits/molecules/benefit_item_molecule.dart";
import "package:subscribe_me/widgets/common/atoms/label_atom.dart";

class BenefitsOrganism extends StatefulWidget {
  const BenefitsOrganism({super.key});

  @override
  State<BenefitsOrganism> createState() => _BenefitsOrganismState();
}

class _BenefitsOrganismState extends State<BenefitsOrganism> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BenefitsProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LabelAtom(text: "Briefly describe the benefits of your subscription (Max 10)", padding: 40),
        ListView.builder(
          shrinkWrap: true,
          itemCount: provider.benefits.length,
          itemBuilder:(context, index) => Container(
            padding: const EdgeInsets.all(4),
            child: BenefitItemMolecule(
              index: index,
              trigger: () => provider.removeBenefit(index),
              controller: provider.benefits[index].controller),
          )),
        BenefitAddButtonAtom(trigger: () {
          provider.addBenefit();

          if (provider.benefits.length == 10) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Benefits limit reached! (Max: 10)"))
            );
          }
        })
      ]
    );
  }
}