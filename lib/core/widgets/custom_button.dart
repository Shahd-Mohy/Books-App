import 'package:books_app/core/utils/styels.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRaduis,
    required this.text,  this.fontSize,
  });

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRaduis;
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRaduis ??
                  BorderRadius.circular(
                    16,
                  ),
            )),
        child: Text(
          text,
          style: Styels.textStyle18
              .copyWith(color: textColor, fontWeight: FontWeight.w900 ,fontSize: fontSize),
        ),
      ),
    );
  }
}
