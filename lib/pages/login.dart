import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:order_aja_apps/pages/register.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Container(
                height: 260,
                child: (Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(30),
                      child: Center(
                        child: Image.asset(
                          'image/logo.png',
                          scale: 2,
                        ),
                      ),
                    ),
                    Center(
                      child: Text("Selamat Datang",
                          style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold))),
                    ),
                    Center(
                        child: RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: 'Di Aplikasi Order',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 15, 23, 43)))),
                        TextSpan(
                            text: 'aja',
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 255, 187, 1))))
                      ]),
                    )),
                  ],
                ))),
            Container(
                height: 280,
                child: ListView(
                  padding: EdgeInsets.all(20),
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "Email",
                        style: GoogleFonts.inter(),
                      ),
                    ),
                    TextField(
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 15, 23, 43),
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 217, 217, 217),
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5)),
                        )),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        "Password",
                        style: GoogleFonts.inter(),
                      ),
                    ),
                    TextField(
                        autocorrect: false,
                        obscureText: true,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 15, 23, 43),
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 217, 217, 217),
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(5)),
                        )),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 60, vertical: 25),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(
                                        color:
                                            Color.fromARGB(255, 15, 23, 43))),
                                backgroundColor:
                                    Color.fromARGB(255, 15, 23, 43)),
                            child: Text('Masuk',
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ))),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => RegisterPage(),
                              ));
                            },
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 60, vertical: 25),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(
                                        color:
                                            Color.fromARGB(255, 15, 23, 43))),
                                backgroundColor: Colors.white),
                            child: Text('Daftar',
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Color.fromARGB(255, 15, 23, 43),
                                      fontWeight: FontWeight.bold),
                                )))
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
