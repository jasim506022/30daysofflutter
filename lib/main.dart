import 'package:flutter/material.dart';
import 'package:flutter_catelogs_app/page/homepage.dart';
import 'package:flutter_catelogs_app/page/loginpage.dart';
import 'package:flutter_catelogs_app/utilies/myroutes.dart';
import 'package:flutter_catelogs_app/widget/mythemes.dart';
import 'package:google_fonts/google_fonts.dart';

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
      themeMode: ThemeMode.light,
      theme: MyThemes.lightthemedata(context),
      darkTheme: MyThemes.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
