import 'package:flutter/material.dart';
import 'package:test_1/app_theme.dart';

class TextWithBtn extends StatelessWidget {
  final String btnText;
  final String mainText;
  final void Function()? btnFunction;
  const TextWithBtn({
    Key? key,
    required this.btnText,
    required this.mainText,
    required this.btnFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            mainText,
            style: AppTheme.hintText.copyWith(fontSize: 12),
          ),
          TextButton(
              onPressed: btnFunction,
              child: Text(
                btnText,
                style: AppTheme.blackButtonText
                    .copyWith(color: Colors.blueAccent, fontSize: 12),
              ))
        ],
      ),
    );
  }
}
