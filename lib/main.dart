import 'package:flutter/material.dart';
import 'package:leftover_mobile/screens/main_screen.dart';

void main() {
  runApp(const LeftOverApp());
}

class LeftOverApp extends StatelessWidget {
  const LeftOverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LeftOver',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF315D47),
          primary: const Color(0xFF315D47),
        ),
        scaffoldBackgroundColor: const Color(0xFFFAF9F6),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF315D47),
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
      home: const MainScreen(),
    );
  }
}