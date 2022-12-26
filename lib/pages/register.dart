import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:order_aja_apps/pages/profile.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              height: 100,
              child: Row(
                children: [
                  SizedBox(
                      height: 40.0,
                      width: 40.0,
                      child: IconButton(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        icon: Icon(Icons.arrow_back_outlined, size: 40.0),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text("Daftar",
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))),
                  )
                ],
              ),
            ),
            Container(
              height: 700,
              child: ListView(
                padding: EdgeInsets.all(20),
                children: [
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Nama",
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
                      "Nomor Telepon",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              "Tempat Lahir",
                              style: GoogleFonts.inter(),
                            ),
                          ),
                          SizedBox(
                            width: 170,
                            child: TextField(
                                autocorrect: false,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 15, 23, 43),
                                          width: 2.0),
                                      borderRadius: BorderRadius.circular(5)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 217, 217, 217),
                                          width: 2.0),
                                      borderRadius: BorderRadius.circular(5)),
                                )),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Text(
                              "Tanggal Lahir",
                              style: GoogleFonts.inter(),
                            ),
                          ),
                          SizedBox(
                            width: 170,
                            child: TextField(
                                autocorrect: false,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 15, 23, 43),
                                          width: 2.0),
                                      borderRadius: BorderRadius.circular(5)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 217, 217, 217),
                                          width: 2.0),
                                      borderRadius: BorderRadius.circular(5)),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            checkColor: Colors.white,
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Setuju dengan persyaratan layanan dan",
                            style: GoogleFonts.inter(),
                          ),
                          Text(
                            "kebijakan privasi",
                            style: GoogleFonts.inter(),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProfilePage(),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 60, vertical: 25),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: BorderSide(
                                  color: Color.fromARGB(255, 15, 23, 43))),
                          backgroundColor: Color.fromARGB(255, 15, 23, 43)),
                      child: Text('Daftar',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
