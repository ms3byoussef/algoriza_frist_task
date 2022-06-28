// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:test_1/app_theme.dart';

class OutlinedBtn extends StatelessWidget {
  Widget? child;
  void Function()? onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  OutlinedBtn({
    Key? key,
    required this.child,
    required this.onPressed,
    required this.backgroundColor,
    this.foregroundColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: AppTheme.hintColor),
              borderRadius: BorderRadius.circular(3),
            ),
          ),
        ),
        child: Padding(padding: const EdgeInsets.all(10.0), child: child),
      ),
    );
  }
}
