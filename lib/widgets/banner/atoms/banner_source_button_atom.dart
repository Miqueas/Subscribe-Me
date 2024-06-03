import 'package:flutter/material.dart';

class BannerSourceButtonAtom extends StatelessWidget {
  const BannerSourceButtonAtom({
    super.key,
    required this.icon,
    required this.title,
    required this.trigger
  });

  final IconData icon;
  final String title;
  final void Function()? trigger;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IconButton(onPressed: trigger, icon: Icon(icon), iconSize: 36),
      Text(title)]);}}