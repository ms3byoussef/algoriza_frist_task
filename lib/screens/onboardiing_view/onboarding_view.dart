import 'package:flutter/material.dart';
import 'package:test_1/app_theme.dart';
import 'package:test_1/onboardiing_view/components/intro_content.dart';
import 'package:test_1/onboardiing_view/components/skip_btn.dart';
import 'package:test_1/register_view/register_view.dart';
import 'package:test_1/sign_in_View/sign_in_view.dart';
import 'package:test_1/widgets/main_btn.dart';
import 'package:test_1/widgets/text_with_btn.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  List<Map<String, String>> introData = [
    {
      'introText': 'Buy Any Food From Your Favorite Restruant',
      'imgName': 'Delivery-bro.png',
      'hintText':
          'we are constantly adding your favorite restruant throughtout the territory and around your area',
    },
    {
      'introText': 'Get Food Delivery to your doorstep asap ',
      'imgName': 'Mail sent-bro.png',
      'hintText':
          'we have young and profestional delivery team that will bring your food as soon as possible to your doorstep.',
    },
    {
      'introText': 'Get Heavy box Delivery to your doorstep asap ',
      'imgName': 'Heavy box-bro.png',
      'hintText':
          'we have young and profestional delivery team that will bring your Heavy box as soon as possible to your doorstep.',
    },
  ];
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    double hight = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppTheme.kPadding),
            child: Column(
              children: [
                SizedBox(
                    height: hight * .2,
                    child: Column(
                      children: [
                        SkipBtn(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => const SignInView()));
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '7',
                                style: AppTheme.introHeadline
                                    .copyWith(color: AppTheme.accenColor),
                              ),
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text: 'Krave',
                                      style: AppTheme.introHeadline),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: hight * .5,
                  child: PageView.builder(
                    onPageChanged: ((value) => setState(() {
                          currentPage = value;
                        })),
                    itemCount: introData.length,
                    itemBuilder: ((context, index) => IntroContent(
                          introText: introData[index]['introText'],
                          imgName: introData[index]['imgName'],
                          hintText: introData[index]['hintText'],
                        )),
                  ),
                ),
                SizedBox(height: hight * .05),
                SizedBox(
                  height: hight * .05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(
                      introData.length,
                      (index) => buildDot(index),
                    ),
                  ),
                ),
                SizedBox(height: hight * .05),
                SizedBox(
                  height: hight * .2,
                  child: Column(
                    children: [
                      MainBtn(
                        backgroundColor: AppTheme.primaryColor,
                        btnText: 'Get started',
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const SignInView()));
                        },
                      ),
                      TextWithBtn(
                        mainText: 'Don\'t have an acount ?',
                        btnText: 'Sign Up',
                        btnFunction: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) => const RegisterView()));
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index
              ? const Color.fromARGB(255, 236, 162, 71)
              : AppTheme.accenColor,
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
