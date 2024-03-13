import 'package:flutter/material.dart';

class OptionsCard extends StatelessWidget {
  const OptionsCard({
    super.key,
    required this.optionLabel,
    required this.borderColor,
    this.onTap,
  });

  final String optionLabel;
  final Color borderColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: borderColor)),
        child: Row(
          children: [
            Expanded(child: Text(optionLabel)),
            Icon(Icons.radio_button_unchecked),
          ],
        ),
      ),
    );
  }
}
