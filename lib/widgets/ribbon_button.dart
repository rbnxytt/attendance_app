import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RibbonButton extends StatelessWidget {
  const RibbonButton({
    Key? key,
    required this.leftMargin,
    required this.onTap,
    required this.color,
    required this.label,
  }) : super(key: key);

  final double leftMargin;
  final void Function() onTap;
  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 110.0,
      left: leftMargin,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
          ),
          height: 30.0,
          width: 120.0,
          child: Center(
            child: Text(
              label,
              style: GoogleFonts.roboto(color: Colors.white, fontSize: 14.0),
            ),
          ),
        ),
      ),
    );
  }
}
