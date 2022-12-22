import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///
class Screen2 extends StatelessWidget {
  ///
  const Screen2();

  @override
  Widget build(final BuildContext context) => Scaffold(
        backgroundColor: const Color(0XFF101112),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.chevron_left_sharp,
              size: 40,
            ),
          ),
          title: const Text('Checkout'),
          titleTextStyle: GoogleFonts.roboto(fontSize: 24),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: Icon(Icons.more_horiz_sharp),
            )
          ],
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),

              /// Credit card.
              Container(
                height: 200,
                width: 325,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage('assets/screen_2/map.png')),
                  gradient: LinearGradient(
                    colors: [
                      Color(0XFFFF602C),
                      Color(0XFFD40C3D),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 25, left: 21, right: 21, bottom: 25),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 13,
                            width: 42.5,
                            child: Image.asset(
                              'assets/screen_2/visa.png',
                            ),
                          ),
                          Text(
                            'world',
                            style: GoogleFonts.roboto(
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                color: const Color(0XFF950D21)),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Card number',
                          style: GoogleFonts.roboto(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: const Color(0XFF950D21)),
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        '4539  4659  2157  2356',
                        style: GoogleFonts.roboto(
                            letterSpacing: 1,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Expiration',
                                  style: GoogleFonts.roboto(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0XFF950D21)),
                                ),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                '01/2024',
                                style: GoogleFonts.roboto(
                                    letterSpacing: 1,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 85),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'CVC2',
                                    style: GoogleFonts.roboto(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0XFF950D21)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  '234',
                                  style: GoogleFonts.roboto(
                                      letterSpacing: 1,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Purchase',
                      style:
                          GoogleFonts.roboto(fontSize: 24, color: Colors.white),
                    ),
                    const Icon(
                      Icons.more_horiz_sharp,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 429,
                width: double.infinity,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 385,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        'assets/screen_2/shoe.png',
                        height: 275,
                      ),
                    ),
                    Positioned(
                      bottom: 40,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Men's Shoe",
                                    style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      color: const Color(0XFFA0A7BA),
                                    ),
                                  ),
                                  Text(
                                    'Nike Shoe',
                                    style: GoogleFonts.roboto(
                                        fontSize: 36, color: Colors.black),
                                  ),
                                  Text(
                                    r'$ 300',
                                    style: GoogleFonts.roboto(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                              Container(
                                height: 83,
                                width: 83,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0XFFFF602C),
                                      Color(0XFFD40C3D),
                                    ],
                                  ),
                                ),
                                child: const Icon(
                                  Icons.arrow_forward_outlined,
                                  size: 33,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
