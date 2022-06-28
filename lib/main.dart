import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:test_1/onboardiing_view/onboarding_view.dart';

void main() {
  runApp(
    DevicePreview(enabled: true, builder: (context) => const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'test_1',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: const OnboardingView());
  }
}
