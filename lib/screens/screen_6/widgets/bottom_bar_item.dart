import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/categories.dart';

///
class BottomBarItem extends StatelessWidget {
  ///
  const BottomBarItem({required this.item, this.isSelected = false});

  ///
  final Categories item;

  ///
  final bool isSelected;

  @override
  Widget build(final BuildContext context) => Column(
        children: [
          SvgPicture.asset(
            item.iconPath ?? '',
            color: isSelected ? Colors.black : Colors.black.withOpacity(0.2),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            item.title ?? '',
            textAlign: TextAlign.left,
            style: GoogleFonts.montserrat(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: isSelected ? Colors.black : Colors.black.withOpacity(0.2),
            ),
          ),
        ],
      );
}
