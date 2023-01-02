import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'helper/custom_shape.dart';
import 'models/categories.dart';
import 'widgets/bottom_bar_item.dart';
import 'widgets/category.dart';

///
class Screen6 extends StatefulWidget {
  ///
  const Screen6();

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  static const List<Categories> categories = [
    Categories(
      iconPath: 'assets/screen_6/dumbbell.svg',
      title: 'My Exercise',
    ),
    Categories(
      iconPath: 'assets/screen_6/pilates-ball.svg',
      title: 'My Workouts',
    ),
    Categories(
        iconPath: 'assets/screen_6/pilates.svg',
        title: 'Body Score',
        notification: 86),
    Categories(
      iconPath: 'assets/screen_6/yoga-mat.svg',
      title: 'Equipment',
    ),
  ];
  static const List<Categories> bottom_bar = [
    Categories(
      iconPath: 'assets/screen_6/home.svg',
      title: 'Workout',
    ),
    Categories(
      iconPath: 'assets/screen_6/friends.svg',
      title: 'Friends',
    ),
    Categories(
      iconPath: 'assets/screen_6/profile.svg',
      title: 'Profile',
    ),
  ];
  static const int selected = 2;
  @override
  Widget build(final BuildContext context) => Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                ClipPath(
                  clipper: CustomShape(),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.65,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0XFFFF1F00),
                          Color(0XFFFF6F00),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 80,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        foregroundImage:
                            AssetImage('assets/screen_6/user.jpeg'),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Pratik Rajbhandari',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.montserrat(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: Colors.white),
                          ),
                          Text(
                            'Reached goals: 5',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                  SvgPicture.asset('assets/screen_6/menu.svg')
                ],
              ),
            ),
            Positioned(
              top: 150,
              left: 20,
              right: 20,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                  itemCount: categories.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 2.5,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20),
                  itemBuilder: (final context, final index) =>
                      Category(item: categories[index]),
                ),
              ),
            ),
            Positioned(
                bottom: 40,
                right: 0,
                left: 0,
                child: Column(
                  children: [
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ...bottom_bar.map((e) => BottomBarItem(
                                item: e,
                                isSelected: selected == bottom_bar.indexOf(e),
                              ))
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ),
      );
}
