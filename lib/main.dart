import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Color(0XFF7625CF)),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Theme.of(context).primaryColor,
          Color(0XFF9245E8),
        ],
      )),
      child: SafeArea(
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            height: double.infinity,
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                    ),
                    Text(
                      'SKIP',
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    )
                  ],
                ),
                Positioned(
                  top: 79,
                  left: MediaQuery.of(context).size.width * 0.3,
                  child: Text(
                    '90\u02e2 Style',
                    style: GoogleFonts.openSans(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        wordSpacing: 10,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 140,
                  left: MediaQuery.of(context).size.width * 0.3,
                  child: Text(
                    '90s Nostalgia Gifts\n & Merchandise',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFFC9A0F8)),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 30,
                  child: Image.asset(
                    'assets/girl.png',
                    height: 508,
                    width: 321,
                  ),
                ),
                Positioned(
                  bottom: 35,
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width - 50,
                    decoration: BoxDecoration(
                        color: Color(0XFF3CC9D7),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      'SIGN UP WITH EMAIL',
                      style: GoogleFonts.openSans(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
