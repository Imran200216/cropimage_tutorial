import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider/demo_provider.dart';
import 'package:untitled/screens/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => DemoProvider()),
        ],
        builder: (context, child) {
          return const MaterialApp(
            home: HomeScreen(),
          );
        });
  }
}
