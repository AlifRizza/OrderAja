import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:order_aja_apps/pages/orderin2.dart';

class SuksesKasir extends StatelessWidget {
  const SuksesKasir({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(milliseconds: 2000), () {
      // Replace the current page with the previous page after 500 milliseconds
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => OrderIn2(),
        ),
      );
    });

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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 80),
                child: Center(
                  child: Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'image/stroke.png',
                          scale: 2,
                        ),
                        Container(
                          padding: EdgeInsets.all(50),
                          child: Text("Pesanan Diteruskan ke kasir",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ))),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
