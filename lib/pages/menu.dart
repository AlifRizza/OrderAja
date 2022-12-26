import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
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
                height: 200,
                padding: EdgeInsets.all(20),
                child: Container(
                  width: double.minPositive,
                  height: double.minPositive,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    'image/promo.png',
                    fit: BoxFit.fill,
                  ),
                )),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Menu Paling Laku",
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
            ),
            Container(
              height: 270,
              padding: EdgeInsets.all(20),
              child: GridView(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 150),
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
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
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text("Chicken Salad",
                                style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold))),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
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
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              'image/food2.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text("Kopi Susu",
                                style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold))),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text("Rp. 15.000",
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
                            height: 150,
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
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text("Chicken Salad",
                                style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold))),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
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
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Paket hemat",
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
            ),
            Container(
              height: 500,
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 150),
                children: [
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text("Paket hemat 1",
                                    style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold))),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text("1 Chicken Salad + 1 Kopi Susu",
                                    style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal))),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text("Rp. 40.000",
                                    style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal))),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text("Paket hemat 1",
                                    style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold))),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text("1 Chicken Salad + 1 Kopi Susu",
                                    style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal))),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text("Rp. 40.000",
                                    style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal))),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 217, 217, 217), width: 2),
                      color: Colors.white,
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text("Paket hemat 1",
                                    style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold))),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text("1 Chicken Salad + 1 Kopi Susu",
                                    style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.normal))),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Text("Rp. 40.000",
                                    style: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal))),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Positioned(
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
    );
  }
}
