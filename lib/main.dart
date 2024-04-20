import 'package:flutter/material.dart';
import 'package:instagram_ui/Home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram UI using Flutter',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Home(),
    );
  }
}
