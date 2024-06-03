import "dart:io";
import "package:flutter/material.dart";
import "package:image_picker/image_picker.dart";
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
        const Label(text: "Upload a \"welcome\" picture (optional). Press and hold the image to delete it.",
          padding: 20),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(children: [Expanded(
            child: SizedBox(height: 160, child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onLongPress: provider.removeBanner,
              onTap: () {
                if (!Platform.isAndroid && !Platform.isIOS) {
                  provider.selectBanner(ImageSource.gallery);
                  return;
                }

                showModalBottomSheet(context: context, builder: (context) {
                  return FittedBox(child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(children: [
                        const Text("Select banner source", style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18)),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                          Column(children: [
                            IconButton(onPressed: () => provider.selectBanner(ImageSource.camera),
                              icon: const Icon(Icons.camera),
                              iconSize: 36),
                            const Text("Camera")]),
                          const Padding(padding: EdgeInsets.all(10)),
                          Column(children: [
                            IconButton(onPressed: () => provider.selectBanner(ImageSource.gallery),
                              icon: const Icon(Icons.photo),
                              iconSize: 36),
                            const Text("Gallery")])])])));});
              }, child: Stack(children: children))))]))]);
  }
}