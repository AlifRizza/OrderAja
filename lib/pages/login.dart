import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:order_aja_apps/pages/profile.dart';
import 'package:order_aja_apps/pages/register.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailC = TextEditingController();
    TextEditingController PassC = TextEditingController();

    List allUser = [];

    Future getAllUser() async {
      try {
        var response = await http.get(Uri.parse(
            "https://63ad9ceeceaabafcf167656e.mockapi.io/USER_KASIR"));
        print(response.body);
        List data = (json.decode(response.body));
        print(data);
      } catch (e) {}
    }

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
                        controller: emailC,
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
                        controller: PassC,
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
                            onPressed: () async {
                              var response = await http.get(Uri.parse(
                                  "https://63ad9ceeceaabafcf167656e.mockapi.io/USER_KASIR"));
                              print(response.body);
                              print(emailC);
                              print(PassC);
                              List data = (json.decode(response.body));
                              data.forEach((element) {
                                if (element['email'] == emailC.text &&
                                    element['password'] == PassC.text) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ProfilePage(),
                                  ));
                                }
                              });
                            },
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
