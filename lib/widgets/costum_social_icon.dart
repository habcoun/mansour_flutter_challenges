import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CostumSocialIcon extends StatelessWidget {
  final IconData? icon; //FontAwesomeIcons.facebookF,
  final String? text;
  final Color? color;
  const CostumSocialIcon({
    this.icon,
    this.text,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 35,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FaIcon(
              icon,
              color: Colors.white,
              size: 15,
            ),
            Text(
              text!,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
