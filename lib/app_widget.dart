import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'presentation/screens/spash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(750, 1334),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, c) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "MCU",
            home: SplashScreen(),
          );
        });
  }
}
