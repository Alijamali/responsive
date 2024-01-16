import 'package:flutter/material.dart';
import 'package:responsive/responsive/desktop_body_screen.dart';
import 'package:responsive/responsive/mobile_body_screen.dart';
import 'package:responsive/responsive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ResponsiveLayout(
          mobileBody: MobileBodyScreen(),
          desktopBody: DesktopBodyScreen(),
        ),
      ),
    );
  }
}
