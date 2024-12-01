import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/onboarding_info_section.dart';
import 'last_onboarding_view.dart';

class SecondOnBoardingView extends StatelessWidget {
  const SecondOnBoardingView({super.key, required this.onBoardingIndex});
  final int onBoardingIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                "assets/images/back_arrow.svg",
                width: 24,
                height: 22,
              ),
              Expanded(
                  flex: 5, child: Image.asset("assets/images/vegitables.png")),
              Expanded(
                flex: 3,
                child: OnboardingInfoSection(
                  title: "We provide best quality Fruits to your family",
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed ",
                  dotIndex: onBoardingIndex,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LastOnboardingView(
                                  onBoardingIndex: 3,
                                )));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
