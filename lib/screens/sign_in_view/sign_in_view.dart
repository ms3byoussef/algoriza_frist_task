import 'package:flutter/material.dart';
import 'package:test_1/screens/sign_in_view/components/sign_in_form.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * .4,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/Signing a contract-rafiki.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                height: size.height * .74,
                child: SignInForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
