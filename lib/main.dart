import 'package:flutter/material.dart';
import 'views/onboarding_view.dart';

void main() {
  runApp(const AlongaPetApp());
}

class AlongaPetApp extends StatelessWidget {
  const AlongaPetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlongaPET',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const OnboardingView(), // Aponta para a tela inicial do Andrei
    );
  }
}