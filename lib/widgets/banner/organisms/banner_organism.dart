import "dart:io";
import "package:flutter/material.dart";
import "package:image_picker/image_picker.dart";
import "package:provider/provider.dart";
import "package:subscribe_me/controllers/banner_controller.dart";
import "package:subscribe_me/controllers/subscription_controller.dart";
import "package:subscribe_me/widgets/banner/atoms/banner_add_icon_atom.dart";
import "package:subscribe_me/widgets/banner/atoms/banner_selected_image_atom.dart";
import "package:subscribe_me/widgets/banner/molecules/banner_modal_bottom_sheet_molecule.dart";
import "package:subscribe_me/widgets/banner/molecules/banner_selector_molecule.dart";

final class BannerOrganism extends StatelessWidget {
  const BannerOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    final subscriptionProvider = Provider.of<SubscriptionProvider>(context);
    final provider = Provider.of<BannerProvider>(context);
    final children = <Widget>[ const BannerIconAtom()];

    if (provider.banner.filePath != "") {
      children.add(BannerImageAtom(path: provider.banner.filePath));
    }

    return BannerMolecule(
      deleteBannerTrigger: provider.removeBanner,
      addBannerTrigger: () {
        if (!Platform.isAndroid && !Platform.isIOS) {
          provider.selectBanner(ImageSource.gallery); return;
        }

        showModalBottomSheet(
          backgroundColor: const Color(0x00FFFFFF),
          context: context,
          builder: (context) => BannerModalBottomSheetMolecule(
            cameraTrigger: () => provider.selectBanner(ImageSource.camera),
            galleryTrigger: () => provider.selectBanner(ImageSource.gallery)));

        subscriptionProvider.setBanner(provider.banner);});}}