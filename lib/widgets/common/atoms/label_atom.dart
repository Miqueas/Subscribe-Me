import "package:flutter/material.dart";

final class LabelAtom extends StatelessWidget {
  const LabelAtom({super.key, required this.text, required this.padding});

  final String text;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: padding), child: Text(text, textAlign: TextAlign.start));
  }
}