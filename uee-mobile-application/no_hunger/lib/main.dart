import 'package:flutter/material.dart';
import 'package:no_hunger/screens/dashboard/dashboard.dart';
import 'package:no_hunger/screens/main/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}
