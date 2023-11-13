import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mosque_tracer/utils/colors.dart';
import 'package:mosque_tracer/utils/text_style.dart';

class CustomTextFiled extends StatelessWidget {
  final String? hintText, labelText, helperText;
  final Widget? prefixIcon;
  final Widget? suffixIcon, prefixIconWidget;
  final FormFieldValidator<dynamic>? validator;
  final TextEditingController? controller;
  final Color? enableBorderColor;
  final String? errorText;
  final bool showLabelText;
  final int? maxLines,maxLength;
  final Color? fillColor;
  // final EdgeInsets? padding;
  final bool isPadding, filled;
  final TextInputType? textInputType;
  final bool showPrefixWidget;
  final bool readOnly;
  final bool obscureText;
  final Function()? onTap;
  final Function(String)? onChange;
  final List<TextInputFormatter>? format;
  final TextInputAction? textInputAction;
  const CustomTextFiled({
    Key? key,
    this.maxLength = 500,
    this.onChange,
    this.textInputAction,
    this.readOnly=false,
    this.obscureText=false,
    this.onTap,
    this.format,
    this.labelText,
    this.prefixIconWidget,
    this.showPrefixWidget = false,
    // this.padding,
    this.textInputType,
    this.fillColor,
    this.isPadding = false,
    this.filled = true,
    this.maxLines = 1,
    this.showLabelText = false,
    this.helperText,
    this.validator,
    this.hintText,
    this.prefixIcon,
    this.controller,
    this.suffixIcon,
    this.enableBorderColor, this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      maxLines: maxLines,
      maxLength: maxLength,
      inputFormatters: format,
      readOnly: readOnly,
      onTap: onTap,
      onChanged: onChange,
      keyboardType: textInputType,
      textInputAction: textInputAction,
      obscureText: obscureText,
      style: GoogleFonts.inter(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w500
      ),
      onTapOutside: (event)=>FocusManager.instance.primaryFocus?.unfocus(),
      decoration: InputDecoration(
        counterText: '',
        fillColor: filled ? Colors.transparent : fillColor,
        filled: filled,
        contentPadding: const EdgeInsets.only(left: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: kPrimaryColor,width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: kPrimaryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Colors.red),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        helperText: helperText,
        prefixIcon: showPrefixWidget == false ? prefixIcon : prefixIconWidget,
        suffixIcon: suffixIcon,
        prefixIconColor: Colors.black,
        hintText: "$hintText",
        errorText: errorText,
        errorStyle: InterStyle.fieldErrStyle,
        labelText: showLabelText ? null : "$labelText",
        labelStyle: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          color: Colors.grey.shade400,
          fontSize: 14,
        ),
        hintStyle: GoogleFonts.inter(
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade400,
          fontSize: MediaQuery.textScaleFactorOf(context)*13,
        ),
      ),
    );
  }
}