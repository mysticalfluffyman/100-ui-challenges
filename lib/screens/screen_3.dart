import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen3 extends StatefulWidget {
  const Screen3();

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color(0XFF160C6E),
        body: Stack(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Center(child: Image.asset('assets/screen_3/ovals.png'))),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: MediaQuery.of(context).size.height / 1.4,
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: Center(child: Image.asset('assets/screen_3/vr.png'))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 60, right: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/screen_3/vrshop.png',
                    width: 78,
                    height: 62,
                  ),
                  const Icon(
                    Icons.search,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Positioned(
              right: 60,
              top: MediaQuery.of(context).size.height / 2.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'GEAR VR',
                    style: GoogleFonts.montserrat(
                        fontSize: 140,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                  Text(
                    "It's easy to get lost in the world of \nvirtual reality "
                    'because the Gear VR\n is engineered to feel lighter.',
                    textAlign: TextAlign.right,
                    style: GoogleFonts.montserrat(
                        height: 2,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: 54,
                      width: 172,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Color(0XFFDF387C),
                            Color(0XFFFF602C),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Find out more',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.arrow_forward,
                              size: 20,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: 60,
              top: MediaQuery.of(context).size.height / 2.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'GEAR VR',
                    style: GoogleFonts.montserrat(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Design',
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Display',
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Experience',
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Spec',
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Gallery',
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 60,
              left: 60,
              child: Row(
                children: const [
                  Icon(
                    Icons.facebook,
                    size: 20,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Icon(
                    CupertinoIcons.thermometer_snowflake,
                    size: 20,
                    color: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      );
}
