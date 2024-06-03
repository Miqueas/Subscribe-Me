import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:subscribe_me/controllers/banner_controller.dart";
import "package:subscribe_me/models/banner_model.dart";
import "package:subscribe_me/widgets/banner/organisms/banner_organism.dart";

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BannerProvider(const BannerModel(filePath: "")),
      child: const BannerOrganism(),
    );
  }
}