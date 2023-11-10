import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mosque_tracer/utils/colors.dart';

class InterStyle{

  static TextStyle w600f16Black = GoogleFonts.inter(
    color: kBlackColor,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );

  static TextStyle w600f16Primary = GoogleFonts.inter(
    color: kPrimaryColor,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );

  static TextStyle w900f26White = GoogleFonts.inter(
    color: Colors.white,
    fontWeight: FontWeight.w900,
    fontSize: 26,
  );
  static TextStyle w600f26Black = GoogleFonts.inter(
    color: kBlackColor,
    fontWeight: FontWeight.w600,
    fontSize: 26,
  );
  static TextStyle w700f18White = GoogleFonts.inter(
    color: Colors.white,
    fontWeight: FontWeight.w700,
    fontSize: 18,
  );

  static TextStyle w600f12Black = GoogleFonts.inter(
    color: kBlackColor,
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );

  static TextStyle fieldErrStyle = GoogleFonts.inter(
    color: Colors.red,
    fontWeight: FontWeight.w600,
    fontSize: 12,
  );


}