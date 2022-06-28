// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:test_1/app_theme.dart';

class MainBtn extends StatelessWidget {
  final String btnText;
  void Function()? onPressed;
  final Color backgroundColor;
  final Color? textColor;
  final Color? foregroundColor;
  MainBtn({
    Key? key,
    required this.btnText,
    required this.onPressed,
    required this.backgroundColor,
    this.foregroundColor = Colors.white,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(foregroundColor!),
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text(
            btnText,
            style: AppTheme.blackButtonText
                .copyWith(color: textColor, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
