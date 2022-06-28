import 'package:flutter/material.dart';
import 'package:test_1/app_theme.dart';

class SkipBtn extends StatelessWidget {
  final void Function()? onPressed;
  const SkipBtn({
    this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: ElevatedButton(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          backgroundColor:
              MaterialStateProperty.all(AppTheme.smallBtn.withOpacity(.95)),
        ),
        child: const Text(
          'skip',
          style: AppTheme.blackButtonText,
        ),
      ),
    );
  }
}
