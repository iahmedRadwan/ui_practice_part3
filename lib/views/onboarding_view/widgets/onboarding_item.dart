import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utilities/app_images.dart';
import 'onboarding_text_info.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({
    super.key,
    this.title = "Welcome to Fresh Fruits",
    this.subTitle =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
    this.currentDotIndex = 0,
    this.imgPath = AppImages.fruitImage,
  });
  final String title;
  final String subTitle;

  final int currentDotIndex;
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: SvgPicture.asset(
            imgPath,
          ),
        ),
        OnboardingTextInfo(
            title: title, subTitle: subTitle, description: subTitle),
      ],
    );
  }
}
