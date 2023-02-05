import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_catelogs_app/widget/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int day = 30;
  final String name = "Codepur";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      drawer: DrawerWidget(),
      body: Center(
        child: Container(
          child: Text("Welcome to $day days of flutter of $name"),
        ),
      ),
    );
  }
}
