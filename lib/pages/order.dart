import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:order_aja_apps/pages/detailOrder.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  int jumlah = 1;

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
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      color: Colors.white,
                      child: IconButton(
                        padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                        icon: Icon(Icons.arrow_back_outlined, size: 40.0),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    Container(
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
                    Container(
                      width: 100,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'image/food3.png',
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 20, 0, 0),
                child: Text("Chicken Salad",
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 20, 0, 0),
                child: Text("Rp. 35.000",
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal))),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 20, 0, 0),
                child: Text(
                    "Salad berisi sayuran segar yang dilengkapi dengan ayam panggang berbumbu gurih dilengkapi sesame dressing yang creamy. cocok untuk kamu yang ingin makan kenyang tapi gk mau gendut.",
                    style: GoogleFonts.inter(
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.normal))),
              ),
              SizedBox(height: 200),
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              icon: Icon(Icons.remove),
                              iconSize: 40,
                              onPressed: () {
                                jumlah = jumlah - 1;
                                setState(() {});
                              },
                            ),
                            Text('$jumlah',
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                            IconButton(
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              icon: Icon(Icons.add),
                              iconSize: 40,
                              onPressed: () {
                                jumlah = jumlah + 1;
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 240,
                        child: ConstrainedBox(
                          constraints:
                              BoxConstraints(maxHeight: 90, maxWidth: 240),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => DetailOrder(),
                                ));
                              },
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 25),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  backgroundColor:
                                      Color.fromARGB(255, 255, 187, 1)),
                              child: Text('Pesan',
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ))),
                        ),
                      )
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
