import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/success_screen/success_screen.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/helpers/helper_function.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false ,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        //  padding to Give Default Equal Space on all side in all screens.
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(image: const AssetImage(TImages.deliveredEmailIllustration), width: THelperFunctions.screenWidth() * 0.6, ),
              const SizedBox(height: TSizes.spaceBtwSections),
            

              /// Title & SubTitle
              Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text('Support@codingwitht.com', style: Theme.of(context).textTheme.labelLarge,  textAlign: TextAlign.center),
               const SizedBox(height: TSizes.spaceBtwSections),
               Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
                 const SizedBox(height: TSizes.spaceBtwSections),
            
             
                 

              /// Buttons
              SizedBox(
                width: double.infinity, 
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                    image: TImages.staticSuccessIllustration,
                    title: TTexts.yourAccountCreatedSubTitle,
                    subTitle: TTexts.yourAccountCreatedSubTitle,
                    onPressed: () => Get.to(() => const LoginScreen()),
                    ),
                  ),
                   child: const  Text(TTexts.tContinue)),
                
                ),
              const SizedBox(height: TSizes.spaceBtwSections),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const  Text(TTexts.resendEmail)),),

            ],
          ), 
          ),
      ), 
    );
  }
} 