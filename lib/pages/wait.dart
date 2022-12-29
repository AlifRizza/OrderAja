import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:order_aja_apps/pages/profile.dart';
import 'package:order_aja_apps/pages/beranda.dart';
import 'package:order_aja_apps/pages/menu.dart';

class Wait extends StatelessWidget {
  const Wait({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Container(
              height: 80,
              child: Center(
                child: RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "Order",
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 15, 23, 43)))),
                  TextSpan(
                      text: "aja",
                      style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 187, 1)))),
                ])),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text("Keranjang Kamu",
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 217, 217, 217), width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'image/food1.png',
                      fit: BoxFit.fill,
                    ),
                    height: 150,
                    width: 150,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Chicken Salad",
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Qty : 1",
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal))),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 217, 217, 217), width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'image/food2.png',
                      fit: BoxFit.fill,
                    ),
                    height: 150,
                    width: 150,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Kopi Susu",
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text("Qty : 1",
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal))),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text("Sedang Dibuat",
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.normal))),
              ),
            ),
            SizedBox(height: 270),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3))
                    ]),
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      icon: Image.asset('image/home_logo.png'),
                      iconSize: 60,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Homepage(),
                        ));
                      },
                    ),
                    IconButton(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      icon: Image.asset('image/fork_knife_logo.png'),
                      iconSize: 60,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Menu(),
                        ));
                      },
                    ),
                    IconButton(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      icon: Image.asset(
                        'image/bag_logo.png',
                        color: Color.fromARGB(255, 255, 187, 1),
                      ),
                      iconSize: 60,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Wait(),
                        ));
                      },
                    ),
                    IconButton(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      icon: Image.asset('image/profile_logo.png',
                          color: Color.fromARGB(255, 15, 23, 43)),
                      iconSize: 60,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ));
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
