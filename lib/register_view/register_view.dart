import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_1/register_view/components/register_form.dart';
import 'package:test_1/sign_in_View/sign_in_view.dart';

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
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      padding: const EdgeInsets.only(right: 16),
                      height: 42,
                      width: 38,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.keyboard_arrow_left_rounded,
                          size: 27,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const SignInView()));
                        },
                      ),
                    ),
                  )),
              Container(
                padding: const EdgeInsets.all(20),
                height: size.height * 1.1,
                child: RigsterForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
