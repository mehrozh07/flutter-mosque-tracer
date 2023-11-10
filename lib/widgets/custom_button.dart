import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mosque_tracer/utils/colors.dart';

class CustomBorderButton extends StatelessWidget {
  final Color? bgColor,textColor;
  final String? title;
  final Function()? onPressed;
  const CustomBorderButton({Key? key,
    this.onPressed,
    this.bgColor = kPrimaryColor,
    this.title,
    this.textColor = const Color(0xffFFFFFF),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onPressed,
      child: Semantics(
        button: true,
        child: Container(
          width: double.infinity,
          height: h*0.055,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text("$title",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              color: textColor,
              fontSize: 16,
            ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final Color? bgColor,textColor;
  final String? title;
  final Function()? onPressed;
  final bool loading,hideColor;
  const CustomButton({super.key,
    this.onPressed,
    this.bgColor = kPrimaryColor,
    this.title,
    this.loading = false,
    this.hideColor = false,
    this.textColor = const Color(0xffFFFFFF),
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            color: !loading && !hideColor ? kPrimaryColor : Colors.grey.shade400,
            onPressed: onPressed,
            child: loading ?
            Transform.scale(
                scale: 0.5,
                child: const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
            ):
            Text("$title",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                color: textColor,
                fontSize: 16,
              ),
            ),
          ),
        )
      ],
    );
  }
}

