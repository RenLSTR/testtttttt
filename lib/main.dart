// ignore_for_file: prefer_const_constructors
import 'package:app_ren/pages/first_page.dart';
import 'package:flutter/material.dart';
import 'package:app_ren/pages/home_page.dart';
import 'package:app_ren/pages/settings_page.dart';
import 'package:app_ren/pages/profile_page.dart';

void main() {
  runApp(const RenApp());
}

class RenApp extends StatelessWidget {
  const RenApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage' : (context) => FirstPage(),
        '/homepages' : (context) => HomePage(),
        '/settingspages' : (context) => SettingsPage(),
        '/profilepages' : (context) => ProfilePage(),
      },
    );
  }
}
