import 'package:flutter/material.dart';
import 'hangzhou_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '中国家乡旅行推荐',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1A6B4A),
        ),
        useMaterial3: true,
      ),
      home: const HangzhouPage(),
    );
  }
}