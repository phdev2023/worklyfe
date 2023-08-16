import 'package:Worklyfe/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color buttonColor;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final EdgeInsetsGeometry padding;
  final double borderRadius;
  final BorderSide borderSide;
  final Color borderColor;
  final String icon;
  final int minusWidth;

  const CommonTextButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.buttonColor = AppColors.primary,
      this.textColor = AppColors.white,
      this.fontSize = 16,
      this.fontWeight = FontWeight.normal,
      this.padding = const EdgeInsets.all(10),
      this.borderRadius = 8,
      this.borderSide = BorderSide.none,
      this.borderColor = Colors.transparent,
      this.icon = '',
      this.minusWidth = 40});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - minusWidth,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
          foregroundColor: MaterialStateProperty.all<Color>(textColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              side: borderSide.copyWith(color: borderColor, width: 2),
            ),
          ),
        ),
        child: Padding(
          padding: padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != '') SvgPicture.asset(icon),
              const SizedBox(width: 8.0),
              Text(
                text,
                style: TextStyle(
                  fontFamily: 'CircularStd',
                  fontSize: fontSize * MediaQuery.textScaleFactorOf(context),
                  fontWeight: fontWeight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
