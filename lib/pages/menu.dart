import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:order_aja_apps/pages/detailOrder.dart';
import 'package:order_aja_apps/pages/order.dart';
import 'package:order_aja_apps/pages/profile.dart';
import 'package:order_aja_apps/pages/beranda.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
                height: 60,
                child: TextField(
                    decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search...',
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 15, 23, 43), width: 2.0),
                      borderRadius: BorderRadius.circular(5)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 217, 217, 217),
                          width: 2.0),
                      borderRadius: BorderRadius.circular(5)),
                )),
              ),
              Container(
                height: 70,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ConstrainedBox(
                        constraints:
                            BoxConstraints(maxHeight: 60, maxWidth: 240),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(
                                        color:
                                            Color.fromARGB(255, 15, 23, 43))),
                                backgroundColor:
                                    Color.fromARGB(255, 15, 23, 43)),
                            child: Text('Makanan',
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ))),
                      ),
                      ConstrainedBox(
                        constraints:
                            BoxConstraints(maxHeight: 60, maxWidth: 240),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(
                                        color:
                                            Color.fromARGB(255, 15, 23, 43))),
                                backgroundColor: Colors.white),
                            child: Text('Minuman',
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Color.fromARGB(255, 15, 23, 43),
                                      fontWeight: FontWeight.bold),
                                ))),
                      ),
                      ConstrainedBox(
                        constraints:
                            BoxConstraints(maxHeight: 60, maxWidth: 240),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(
                                        color:
                                            Color.fromARGB(255, 15, 23, 43))),
                                backgroundColor: Colors.white),
                            child: Text('Paket',
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Color.fromARGB(255, 15, 23, 43),
                                      fontWeight: FontWeight.bold),
                                ))),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 600,
                padding: EdgeInsets.all(20),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 250),
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Order(),
                                ));
                              },
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  'image/food1.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text("Chicken Salad",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text("Rp. 35.000",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal))),
                            ),
                          ],
                        )),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                'image/food1.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text("Chicken Salad",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text("Rp. 35.000",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal))),
                            ),
                          ],
                        )),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                'image/food1.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text("Chicken Salad",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text("Rp. 35.000",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal))),
                            ),
                          ],
                        )),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                'image/food1.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text("Chicken Salad",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text("Rp. 35.000",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal))),
                            ),
                          ],
                        )),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                'image/food1.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text("Chicken Salad",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text("Rp. 35.000",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal))),
                            ),
                          ],
                        )),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                'image/food1.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text("Chicken Salad",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text("Rp. 35.000",
                                  style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal))),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
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
                        icon: Image.asset(
                          'image/fork_knife_logo.png',
                          color: Color.fromARGB(255, 255, 187, 1),
                        ),
                        iconSize: 60,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Menu(),
                          ));
                        },
                      ),
                      IconButton(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        icon: Image.asset('image/bag_logo.png'),
                        iconSize: 60,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailOrder(),
                          ));
                        },
                      ),
                      IconButton(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        icon: Image.asset(
                          'image/profile_logo.png',
                          color: Color.fromARGB(255, 15, 23, 43),
                        ),
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
        ),
      ),
    );
  }
}
