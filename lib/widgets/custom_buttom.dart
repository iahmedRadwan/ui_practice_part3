import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.buttonText,
      this.onTap,
      required this.textColor,
      required this.backgroundColor,
      this.borderColor});
  final String buttonText;
  final void Function()? onTap;
  final Color textColor;
  final Color backgroundColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(
            backgroundColor,
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                  side: BorderSide(color: borderColor ?? backgroundColor))),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: textColor),
        ),
      ),
    );
  }
}
