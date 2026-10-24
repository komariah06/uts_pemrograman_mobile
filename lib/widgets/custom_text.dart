import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/* Saya pilih font Quicksand dari google fonts karena bentuknya yang membulat
yang ngasih kesan ramah dan santai, cock untuk aplikasi yang bertema kantin.
Gaya tampilan dibuat minimalis dengan warna default 
abu-abu gelap agar mata tidak cepat lelah */

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;

  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.normal,
    this.color = const Color(0xFF424242),
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.quicksand(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
