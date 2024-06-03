import 'package:flutter/material.dart';
import 'package:subscribe_me/widgets/banner/atoms/banner_source_button_atom.dart';

class BannerModalBottomSheetMolecule extends StatelessWidget {
  const BannerModalBottomSheetMolecule({
    super.key,
    required this.cameraTrigger,
    required this.galleryTrigger,
  });

  final void Function()? cameraTrigger;
  final void Function()? galleryTrigger;

  @override
  Widget build(BuildContext context) {
    return FittedBox(child: Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 34, 2, 39),
            Color.fromARGB(255, 15, 0, 19)])),
      padding: const EdgeInsets.all(20),
      child: Column(children: [
        const Text("Select banner source", style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 18)),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          BannerSourceButtonAtom(icon: Icons.camera, title: "Camera", trigger: cameraTrigger),
          const Padding(padding: EdgeInsets.all(10)),
          BannerSourceButtonAtom(icon: Icons.photo, title: "Gallery", trigger: galleryTrigger)])])));
  }
}