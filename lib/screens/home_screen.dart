import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_pj5/screens/main_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 3,
          items: const[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.graphic_eq_outlined), label: 'Stats')
          ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        shape:  const CircleBorder(),
        child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 252, 155, 103), 
                Color.fromARGB(255, 185, 98, 243), 
                Color.fromARGB(255, 98, 137, 243),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight, transform:  const GradientRotation(pi/4)),
            ),
            child: Icon(Icons.add_a_photo)
          ),

      ),
      body: Center(
        child: const MainScreen(),
      ),
    );
  }
}
