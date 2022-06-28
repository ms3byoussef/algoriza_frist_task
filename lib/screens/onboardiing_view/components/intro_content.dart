import 'package:flutter/material.dart';
import 'package:test_1/app_theme.dart';

class IntroContent extends StatelessWidget {
  final String? imgName;
  final String? introText;
  final String? hintText;
  const IntroContent({
    Key? key,
    this.imgName,
    this.introText,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/$imgName",
          fit: BoxFit.contain,
          height: MediaQuery.of(context).size.height * .3,
          width: MediaQuery.of(context).size.width * .6,
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            textAlign: TextAlign.center,
            introText!,
            style: AppTheme.introText.copyWith(fontSize: 20),
            maxLines: 2,
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            textAlign: TextAlign.center,
            hintText!,
            style: AppTheme.hintText,
            maxLines: 3,
          ),
        ),
      ],
    );
  }
}
