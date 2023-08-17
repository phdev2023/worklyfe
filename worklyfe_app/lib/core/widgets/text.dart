
import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final int maxLines;
  final String fontFamily;
  final bool italic;
  const CommonText({
    required this.text,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
    this.textAlign = TextAlign.left,
    this.overflow = TextOverflow.clip,
    this.maxLines = 1,
    this.fontFamily='CircularStd',
    this.italic=false
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize* MediaQuery.textScaleFactorOf(context),
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        color: color,
        fontStyle: italic? FontStyle.italic:FontStyle.normal
      ),
      textAlign: textAlign,
      overflow: overflow,
      
      // maxLines: maxLines,
    );
  }
}
