import "dart:io";
import "package:flutter/material.dart";

final class BannerImageAtom extends StatelessWidget {
  const BannerImageAtom({super.key, required this.path});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Image.file(File(path), fit: BoxFit.fitWidth),
    );
  }
}