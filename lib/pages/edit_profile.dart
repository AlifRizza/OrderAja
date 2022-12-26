import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:order_aja_apps/pages/profile.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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
                    child: Text("Edit Profile",
                        style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))),
                  )
                ],
              ),
            ),
            Container(
              height: 150,
              child: Stack(
                children: [
                  Center(
                      child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 217, 217, 217),
                        shape: BoxShape.circle),
                  )),
                  Center(
                    child: IconButton(
                      padding: EdgeInsets.fromLTRB(80, 100, 0, 0),
                      icon: Image.asset('image/camera_logo.png'),
                      iconSize: 60,
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 500,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20),
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
                  SizedBox(height: 40),
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
                      child: Text('Simpan',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
