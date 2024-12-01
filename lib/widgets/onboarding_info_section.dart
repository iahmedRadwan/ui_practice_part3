import 'package:flutter/material.dart';
import 'package:flutter_task_2/widgets/custom_buttom.dart';

import 'dot_slider.dart';
import 'onboarding_text_info.dart';

class OnboardingInfoSection extends StatelessWidget {
  const OnboardingInfoSection(
      {super.key,
      required this.title,
      this.subTitle,
      required this.description,
      this.onTap,
      required this.dotIndex});
  final String title;
  final String? subTitle;
  final String description;
  final int dotIndex;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnboardingTextInfo(
            title: title, subTitle: subTitle, description: description),
        DotSlider(
          dotSelectedIndex: dotIndex,
        ),
        const SizedBox(
          height: 42,
        ),
        CustomButton(
          buttonText: 'NEXT',
          onTap: onTap,
          textColor: Color(0xff000000),
          backgroundColor: Color(0xffFEC54B),
        ),
      ],
    );
  }
}
