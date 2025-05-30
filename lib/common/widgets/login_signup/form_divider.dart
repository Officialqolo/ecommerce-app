import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/utils/helpers/helper_function.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/text_strings.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key, required this.dividerTexts,});

  final String dividerTexts;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Divider(color: dark ? TColors.grey: TColors.grey, thickness: 0.5, indent:  60, endIndent: 5)),
        Text(TTexts.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium),
        Flexible(child: Divider(color: dark ? TColors.grey: TColors.grey, thickness: 0.5, indent:  5, endIndent: 60,)),

      ],
    );
  }
}
