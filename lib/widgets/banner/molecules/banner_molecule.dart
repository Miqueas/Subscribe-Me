import "package:flutter/material.dart";
import "package:subscribe_me/controllers/banner.dart";
import "package:subscribe_me/widgets/banner/atoms/icon.dart";
import "package:subscribe_me/widgets/banner/atoms/image.dart";
import "package:subscribe_me/widgets/common/atoms/label.dart";

final class BannerMolecule extends StatefulWidget {
  const BannerMolecule({super.key});

  @override
  State<BannerMolecule> createState() => _BannerMoleculeState();
}


final class _BannerMoleculeState extends State<BannerMolecule> {
  final controller = BannerController();

  @override
  Widget build(BuildContext context) {
    final stackChildren = <Widget>[const BannerIcon()];

    if (controller.banner.filePath != "") {
      stackChildren.add(BannerImage(path: controller.banner.filePath));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Label(text: "Upload a \"welcome\" picture (optional)", padding: 20),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Row(children: [Expanded(
            child: SizedBox(height: 160, child: InkWell(
              borderRadius: BorderRadius.circular(20),
              child: Stack(children: stackChildren),
              onTap: () => controller.selectBanner().whenComplete(() => setState((){})))))]))]);
  }
}