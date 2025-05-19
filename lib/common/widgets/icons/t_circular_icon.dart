import 'package:flutter/material.dart';
import 'package:t_store/utils/helpers/helper_function.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TCircularIcon extends StatelessWidget {
  ///  custom Circular Icon widget with a background color
  /// 
  /// properties are; 
  /// Container [width], [height], & [backgroundcolor]
  /// 
  /// Icon's [size], [color], & [backgroundcolor],
  const TCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = TSizes.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,

  });

  final double? width, height, size;
  final IconData icon;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  
  final dynamic color;


  @override
  Widget build(BuildContext context) {
    return Container(
      width:  width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
        ? backgroundColor!
        : THelperFunctions.isDarkMode(context)
        ? TColors.black.withOpacity(0.9)
        : TColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
       
      child: IconButton(onPressed: onPressed, icon:  Icon(icon, color: color, size: size)),
    );
  }
}
 