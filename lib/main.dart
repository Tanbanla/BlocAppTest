import 'package:flutter/material.dart';
import 'package:flutter_app_pj5/screens/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}
//https://youtu.be/yDyg0A4wL9Y?si=sBynEK8JamkMlyIg
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: const Color.fromARGB(255, 22, 104, 129),
          secondary: const Color(0xFFE064F7),
          tertiary: const Color(0xFFFF8D6C),
          outline: Colors.grey,
        ),
      ),
      home: Scaffold(body: LoginScreen()),
    );
  }
}
