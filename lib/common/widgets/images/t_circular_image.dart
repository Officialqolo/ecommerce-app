import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_function.dart';

class TCircularImage extends StatelessWidget {
  const TCircularImage({
    super.key,
    this.width = 56,
    this.height = 56,
    this.overlayColor,
    this.backgroundColor,
    required this.image,
    this.fit = BoxFit.cover,
    this.padding = TSizes.sm,
    this.isNetworkingImage = false,
  });
 
  final BoxFit? fit;
  final String image;
  final bool isNetworkingImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;




  @override
  Widget build(BuildContext context) {
    return Container(
        width: 56,
        height: 56,
        padding: const EdgeInsets.all(TSizes.sm),
        decoration: BoxDecoration(
          color: THelperFunctions.isDarkMode(context)
              ? TColors.black
              : TColors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Image(
          fit: fit,
          image: isNetworkingImage ? NetworkImage(image) : AssetImage(image) as ImageProvider,
          color: overlayColor,
        ), 
        ),
    );
  }
}
    
