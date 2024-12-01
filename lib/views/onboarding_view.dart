import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_2/views/second_onboarding_view.dart';
import '../widgets/onboarding_info_section.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

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
                  title: "Welcome to Fresh Fruits",
                  subTitle: 'Grocery application',
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SecondOnBoardingView(
                                onBoardingIndex: 2)));
                  },
                  dotIndex: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
