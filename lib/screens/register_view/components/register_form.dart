import 'package:flutter/material.dart';
import 'package:test_1/app_theme.dart';
import 'package:test_1/screens/sign_in_view/sign_in_view.dart';
import 'package:test_1/widgets/custom_form_field.dart';
import 'package:test_1/widgets/main_btn.dart';
import 'package:test_1/widgets/outlined_btn.dart';
import 'package:test_1/widgets/password_form_field.dart';
import 'package:test_1/widgets/text_with_btn.dart';
import 'package:test_1/widgets/validator.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class RigsterForm extends StatelessWidget {
  RigsterForm({
    Key? key,
  }) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController phone = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Welcom To Fashion Dialy',
              style: AppTheme.hintText,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Register',
                style: AppTheme.introText.copyWith(
                    fontSize: 30,
                    fontFamily: 'FiraSans',
                    fontWeight: FontWeight.w500),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Help",
                    style: AppTheme.hintText.copyWith(color: Colors.blue),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/icons/question.png',
                      height: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          CustomFormField(
            controller: email,
            label: 'Email',
            keyboardType: TextInputType.emailAddress,
            validator: (value) => Validator.validateEmail(value!),
            hintText: 'example@gmail.com',
          ),
          const SizedBox(height: 6),
          CustomFormField(
            isPhone: true,
            controller: phone,
            label: 'Phone Number',
            keyboardType: TextInputType.phone,
            validator: (value) => Validator.validateEmpty(value!),
            hintText: 'ex 01010563335',
          ),
          const SizedBox(height: 6),
          PasswordFormField(
            label: 'Password',
            controller: password,
            hintText: 'password',
            validator: (value) => Validator.validateEmpty(value!),
          ),
          const SizedBox(height: 20),
          MainBtn(
              btnText: 'Sign In',
              onPressed: () async {
                if (phone.text.isEmpty) {
                  showTopSnackBar(
                    context,
                    const CustomSnackBar.error(
                      message: "Phone Number is empty",
                    ),
                  );
                  return;
                }
                if (email.text.isEmpty) {
                  showTopSnackBar(
                    context,
                    const CustomSnackBar.error(
                      message: "Emailis empty",
                    ),
                  );
                  return;
                }
                if (password.text.isEmpty) {
                  showTopSnackBar(
                    context,
                    const CustomSnackBar.error(
                      message: "Passwordis empty",
                    ),
                  );
                  return;
                }

                if (_formKey.currentState!.validate()) {
                } else {
                  // ignore: avoid_print
                  print("Not Valid");
                }
              },
              backgroundColor: Colors.blueAccent),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'or',
                style: AppTheme.hintText,
              ),
            ),
          ),
          OutlinedBtn(
              // ignore: sort_child_properties_last
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/google.png',
                    height: 27,
                  ),
                  Text(
                    ' Sign with by Google',
                    style: AppTheme.blackButtonText
                        .copyWith(color: Colors.blueAccent),
                  )
                ],
              ),
              onPressed: () {},
              backgroundColor: Colors.white),
          const SizedBox(height: 10),
          TextWithBtn(
            mainText: 'Don\'t have an acount ?',
            btnText: 'Sign In  Here',
            btnFunction: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => const SignInView()));
            },
          ),
          const SizedBox(height: 10),
          Text(
            '''What knowledge do you have of Police Work? 
         Its all about teamwork and making sure your 
              community is safe and clean, ''',
            style: AppTheme.hintText,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Center(
            child: Text(
              'Termes and Condtions',
              style: AppTheme.hintText.copyWith(color: Colors.blue),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
