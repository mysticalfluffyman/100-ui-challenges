import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/categories.dart';

///
class Category extends StatelessWidget {
  ///
  const Category({required this.item});

  ///
  final Categories item;

  @override
  Widget build(final BuildContext context) => Row(
        children: [
          Stack(
            children: [
              SvgPicture.asset(
                item.iconPath ?? '',
                width: 60,
              ),
              if (item.notification != null)
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.white,
                    child: Text(
                      item.notification.toString(),
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: const Color(0XFFFF4300),
                      ),
                    ),
                  ),
                )
              else
                const SizedBox(),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              item.title ?? '',
              textAlign: TextAlign.left,
              style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          ),
        ],
      );
}
