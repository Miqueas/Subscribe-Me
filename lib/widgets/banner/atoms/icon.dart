import "package:flutter/material.dart";

final class BannerIcon extends StatelessWidget {
  const BannerIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: const Color(0x16FFFFFF)),
      child: const Icon(Icons.add));
  }
}