import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int day = 30;
  final String name = "Codepur";

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
          child: Text("Welcome to $day days of flutter of $name"),
        ),
      ),
    );
  }

  
}
