import "package:flutter/material.dart";
import "package:subscribe_me/widgets/common/atoms/label.dart";

final class DropdownAtom extends StatelessWidget {
  const DropdownAtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Label(text: "Set your monthly subscription fee", padding: 20),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: DropdownMenu<double>(
            inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
            expandedInsets: const EdgeInsets.symmetric(),
            hintText: "Specify it here...",
            dropdownMenuEntries: const [
              DropdownMenuEntry(value: 5.99, label: "\$5.99"),
              DropdownMenuEntry(value: 9.99, label: "\$9.99")]))]);
  }
}