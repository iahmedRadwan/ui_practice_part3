import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_2/utilities/app_images.dart';
import 'package:flutter_task_2/views/onboarding_view/widgets/onboarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const String routeName = "OnBoardingView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: SvgPicture.asset(AppImages.backArrow),
        ),
      ),
      body: const OnboardingViewBody(),
    );
  }
}
