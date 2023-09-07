import 'package:flutter/material.dart';
import 'package:flutter_ewallet/pages/main_page.dart';
import 'package:flutter_ewallet/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeApp,
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}
