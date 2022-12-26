import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:order_aja_apps/pages/edit_profile.dart';
import 'package:order_aja_apps/pages/login.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 250,
              color: Color.fromARGB(255, 15, 23, 43),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Akun Saya",
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 217, 217, 217),
                        shape: BoxShape.circle),
                  )
                ],
              ),
            ),
            Container(
              height: 630,
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Container(
                    height: 70,
                    child: Row(
                      children: [
                        IconButton(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          icon: Image.asset('image/Translate.png'),
                          iconSize: 60,
                          onPressed: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 130, 0),
                          child: Text(
                            "Bahasa",
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    color: Color.fromARGB(255, 15, 23, 43),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Transform.scale(
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
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text(
                            "EN",
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    color: Color.fromARGB(255, 15, 23, 43),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Transform.scale(
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
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "ID",
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    color: Color.fromARGB(255, 15, 23, 43),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          icon: Image.asset('image/PencilSimple.png'),
                          iconSize: 60,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => EditProfilePage(),
                            ));
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                          child: Text(
                            "Edit Profile",
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    color: Color.fromARGB(255, 15, 23, 43),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 15),
                          child: SizedBox(
                              height: 40.0,
                              width: 40.0,
                              child: IconButton(
                                icon: Icon(Icons.arrow_forward_ios_rounded,
                                    size: 40.0),
                                onPressed: () {},
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          icon: Image.asset('image/Scroll.png'),
                          iconSize: 60,
                          onPressed: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                          child: Text(
                            "Tentang Kami",
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    color: Color.fromARGB(255, 15, 23, 43),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 15),
                          child: SizedBox(
                              height: 40.0,
                              width: 40.0,
                              child: IconButton(
                                icon: Icon(Icons.arrow_forward_ios_rounded,
                                    size: 40.0),
                                onPressed: () {},
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          icon: Image.asset('image/AppWindow.png'),
                          iconSize: 60,
                          onPressed: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                          child: Text(
                            "Tentang Aplikasi",
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    color: Color.fromARGB(255, 15, 23, 43),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 15),
                          child: SizedBox(
                              height: 40.0,
                              width: 40.0,
                              child: IconButton(
                                icon: Icon(Icons.arrow_forward_ios_rounded,
                                    size: 40.0),
                                onPressed: () {},
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          icon: Image.asset('image/SignOut.png'),
                          iconSize: 60,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                          child: Text(
                            "Keluar",
                            style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                    color: Color.fromARGB(255, 15, 23, 43),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 15),
                          child: SizedBox(
                              height: 40.0,
                              width: 40.0,
                              child: IconButton(
                                icon: Icon(Icons.arrow_forward_ios_rounded,
                                    size: 40.0),
                                onPressed: () {},
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 150),
                  Positioned(
                    top: 0.0,
                    left: 0.0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
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
                              onPressed: () {},
                            ),
                            IconButton(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              icon: Image.asset('image/fork_knife_logo.png'),
                              iconSize: 60,
                              onPressed: () {},
                            ),
                            IconButton(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              icon: Image.asset('image/bag_logo.png'),
                              iconSize: 60,
                              onPressed: () {},
                            ),
                            IconButton(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              icon: Image.asset('image/profile_logo.png'),
                              iconSize: 60,
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
