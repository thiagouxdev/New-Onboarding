import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_onboarding/features/authentication/page/splash_screen/splash_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'New Onboarding',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF00b131),
          primary: const Color(0xFF00b131),
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.black,
        filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            fixedSize: const WidgetStatePropertyAll(Size(double.maxFinite, 52)),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(const Color(0xFF191C19)),
            foregroundColor: WidgetStateProperty.all(const Color(0xFFFFFFFF)),
            fixedSize: const WidgetStatePropertyAll(Size(double.maxFinite, 52)),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
