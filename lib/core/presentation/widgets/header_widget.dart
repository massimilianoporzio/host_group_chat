import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/style.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  final double? fontSize;

  const HeaderWidget({super.key, required this.title, this.fontSize = 40});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            title,
            style: GoogleFonts.bitter(
                color: Palette.kToDark,
                fontSize: fontSize,
                fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Divider(
          thickness: 1.4,
          color: Colors.white,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
