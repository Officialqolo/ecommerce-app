import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screens/onboarding/onboarding.dart';

import 'utils/theme/custom_themes/theme.dart';


/// -- Use this Class to setup themes, initial Bindings, anu animations and much more
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system, 
     theme:  TAppTheme.lightTheme,
     darkTheme: TAppTheme.darkTheme,
     home: const OnBoardingScreen(),
    );
  }
}
      
      
  
