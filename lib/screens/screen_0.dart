import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///
class Screen0 extends StatelessWidget {
  ///
  const Screen0();

  @override
  // ignore: use_decorated_box
  Widget build(final BuildContext context) => Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Theme.of(context).primaryColor,
            const Color(0XFF9245E8),
          ],
        )),
        child: SafeArea(
          bottom: false,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              height: double.infinity,
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.arrow_back_rounded,
                          color: Colors.white,
                        ),
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
                          color: const Color(0XFFC9A0F8)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 30,
                    child: Image.asset(
                      'assets/screen0/girl.png',
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
                          color: const Color(0XFF3CC9D7),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'SIGN UP WITH EMAIL',
                          style: GoogleFonts.openSans(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
