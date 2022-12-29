import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:order_aja_apps/pages/beranda.dart';
import './pages/login.dart';
import 'pages/beranda.dart';
import 'pages/Menu.dart';
import './pages/order.dart';
import './pages/detailOrder.dart';
import './pages/orderSuccess.dart';
import './pages/wait.dart';
import './pages/orderin.dart';
import './pages/orderin_kasir.dart';
import './pages/detail_order_waiters.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
