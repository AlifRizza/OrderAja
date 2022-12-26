import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:order_aja_apps/pages/menu.dart';
import './pages/login.dart';
import './pages/menu.dart';
import './pages/detail.dart';
import './pages/order.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Order(),
    );
  }
}
