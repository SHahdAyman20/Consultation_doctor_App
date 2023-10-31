import 'package:flutter/material.dart';
import 'package:instant_task21_clinic_app/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor-Consultation-App',
      home: HomePage(),
    );
  }
}
