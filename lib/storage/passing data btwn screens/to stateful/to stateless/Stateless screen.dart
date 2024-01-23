import 'package:flutter/material.dart';
class Screen2 extends StatelessWidget {
   String name;
   String? place;
   Screen2 ({super.key, required  this.name, required  this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Welcome to $name located at $place",
          style:TextStyle(fontSize: 25),
        ),
      ),

    );
  }
}
