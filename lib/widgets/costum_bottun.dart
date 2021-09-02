import 'package:challenge_flutter/app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CostumBottun extends StatelessWidget {
  CostumBottun(
      {this.background = Colors.blue,
      this.width = double.infinity,
      required this.text,
      this.radius = 30.0,
      required this.onPress});
  final double width;
  final Color background;
  final String text;
  final double radius;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(
            color: AppColors.kBottunColor.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: MaterialButton(
        child: Text(
          text.toUpperCase(),
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w900,
          ),
        ),
        onPressed: onPress,
      ),
    );
  }
}
