import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///
class Screen1 extends StatelessWidget {
  ///
  const Screen1();

  @override
  Widget build(final BuildContext context) => Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/screen_1/background.png',
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image.asset('assets/screen_1/illustrations.png'),
            ),
            Positioned(
              top: 120,
              left: 77,
              child: Column(
                children: [
                  SizedBox(
                    height: 75,
                    width: 53,
                    child: Image.asset('assets/screen_1/lock.png'),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    'lock.data',
                    style: GoogleFonts.montserrat(color: Colors.white),
                  )
                ],
              ),
            ),
            Positioned(
              top: 250,
              left: 69,
              child: SizedBox(
                width: 288,
                child: Text(
                  'PROTECT YOUR DATA WITH US.',
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 36,
                    letterSpacing: 5,
                    wordSpacing: 10,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 400,
              left: 69,
              child: SizedBox(
                width: 288,
                child: RichText(
                  text: TextSpan(
                    text: '230,100.04',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: ' People trust us!',
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.5,
                          wordSpacing: 2,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 550,
              left: 69,
              child: Column(
                children: [
                  Container(
                    width: 288,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0XFFDADADA)),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Email address',
                            border: InputBorder.none,
                            hintStyle: GoogleFonts.montserrat(
                              color: const Color(0XFF533EDE),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.5,
                              wordSpacing: 2,
                            )),
                      ),
                    ),
                  ),
                  Container(
                    width: 288,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: const Color(0XFFDADADA)),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Password',
                            border: InputBorder.none,
                            hintStyle: GoogleFonts.montserrat(
                              color: const Color(0XFF533EDE),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.5,
                              wordSpacing: 2,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 670,
              left: 69,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  height: 42,
                  width: 288,
                  decoration: BoxDecoration(
                    color: const Color(0XFF533EDE),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      'SIGN UP',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 725,
              left: 69,
              child: SizedBox(
                width: 288,
                child: RichText(
                  text: TextSpan(
                    text: 'Already Signed Up? ',
                    style: GoogleFonts.montserrat(
                      color: const Color(0XFF3D28CF),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.5,
                    ),
                    children: [
                      TextSpan(
                        text: 'Log in',
                        style: GoogleFonts.montserrat(
                          color: const Color(0XFF3D28CF),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
