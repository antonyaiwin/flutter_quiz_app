import 'package:flutter/material.dart';

import '../../core/constants/color_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Ink(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color:
              ColorConstants.primaryBlue.withOpacity(onTap == null ? 0.2 : 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Next',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
