import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:subscribe_me/controllers/banner_controller.dart";
import "package:subscribe_me/widgets/banner/atoms/banner_add_icon_atom.dart";
import "package:subscribe_me/widgets/banner/atoms/banner_selected_image_atom.dart";
import "package:subscribe_me/widgets/common/atoms/label_atom.dart";

final class BannerMolecule extends StatelessWidget {
  const BannerMolecule({
    super.key,
    required this.addBannerTrigger,
    required this.deleteBannerTrigger
  });

  final void Function()? addBannerTrigger;
  final void Function()? deleteBannerTrigger;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<BannerProvider>(context);
    final children = <Widget>[const BannerIconAtom()];

    if (provider.banner.filePath != "") {
      children.add(BannerImageAtom(path: provider.banner.filePath));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LabelAtom(text: "Upload a \"welcome\" picture (optional). Press and hold the image to delete it.",
          padding: 20),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(children: [Expanded(
            child: SizedBox(height: 160, child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onLongPress: deleteBannerTrigger,
              onTap: addBannerTrigger,
              child: Stack(children: children))))]))]);
  }
}