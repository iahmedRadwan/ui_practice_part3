import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_2/widgets/custom_buttom.dart';
import 'package:flutter_task_2/widgets/dot_slider.dart';
import 'package:flutter_task_2/widgets/onboarding_text_info.dart';

class LastOnboardingView extends StatelessWidget {
  const LastOnboardingView({super.key, required this.onBoardingIndex});
  final int onBoardingIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            Expanded(
              child: SvgPicture.asset(
                "assets/images/delevry_img.svg",
                height: 180,
              ),
            ),
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OnboardingTextInfo(
                      title: "Fast and responsibily delivery by our courir",
                      description:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor"),
                  DotSlider(dotSelectedIndex: 3),
                  CustomButton(
                    buttonText: "Create An Account",
                    textColor: Color(0xffFFFFFF),
                    backgroundColor: Color(0xff000000),
                  ),
                  CustomButton(
                    buttonText: "LOGIN",
                    textColor: Color(0xff000000),
                    backgroundColor: Color(0xffFFFFFF),
                    borderColor: Color(0xff000000),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
