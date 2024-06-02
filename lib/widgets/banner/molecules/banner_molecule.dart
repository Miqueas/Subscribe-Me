import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:subscribe_me/controllers/banner_controller.dart";
import "package:subscribe_me/widgets/banner/atoms/icon.dart";
import "package:subscribe_me/widgets/banner/atoms/image.dart";
import "package:subscribe_me/widgets/common/atoms/label.dart";

final class BannerMolecule extends StatelessWidget {
  const BannerMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BannerProvider>(context);
    final children = <Widget>[ const BannerIcon()];

    if (provider.banner.filePath != "") {
      children.add(BannerImage(path: provider.banner.filePath));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Label(text: "Upload a \"welcome\" picture (optional)", padding: 20),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(children: [Expanded(
            child: SizedBox(height: 160, child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: provider.selectBanner,
              child: Stack(children: children))))]))]);
  }
}