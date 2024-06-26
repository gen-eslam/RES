import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final int? maxLines;
  final Color? color;
  final FontStyle? fontStyle;
  const CustomText({
    super.key,
    required this.text,
    required this.style,
    this.maxLines = 1,
    this.color,
    this.fontStyle = FontStyle.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style.copyWith(
        color: color ??
            (Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black),
        fontStyle: fontStyle,
      ),
      maxLines: maxLines,
    );
  }
}
