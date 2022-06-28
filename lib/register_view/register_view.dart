import 'package:flutter/material.dart';
import 'package:test_1/register_view/components/register_form.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: size.height * .1,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/Signing a contract-rafiki.png',
                    ),
                  )),
                  child: Container()),
              Container(
                padding: const EdgeInsets.all(20),
                height: size.height * 1,
                child: RigsterForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
