import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/screens/home/bottom_nav.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medical',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  BottomNav(),
    );
  }
}
