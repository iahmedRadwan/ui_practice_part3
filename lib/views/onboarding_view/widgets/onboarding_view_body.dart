import 'package:flutter/material.dart';
import '../../../utilities/app_color.dart';
import '../../../utilities/app_images.dart';
import '../../../widgets/custom_buttom.dart';
import 'dot_slider.dart';
import 'onboarding_item.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController = PageController(
    initialPage: 0,
  );
  int pageIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      pageIndex = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: PageView(controller: pageController, children: [
              OnBoardingItem(currentDotIndex: pageIndex),
              const OnBoardingItem(
                title: "We provide best quality Fruits to your family",
                subTitle:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed ",
              ),
              const OnBoardingItem(
                imgPath: AppImages.deleveryImage,
                title: "Fast and responsibily delivery by our courir",
                subTitle:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
              ),
            ]),
          ),
          const SizedBox(
            height: 24,
          ),
          DotSlider(
            dotSelectedIndex: pageIndex,
          ),
          const SizedBox(
            height: 40,
          ),
          pageIndex != 2
              ? CustomButton(
                  buttonText: 'NEXT',
                  onTap: () {
                    pageController.animateToPage(++pageIndex,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.bounceIn);
                  },
                  textColor: AppColor.kBlackColor,
                  backgroundColor: AppColor.kPrimaryColor,
                )
              : Column(
                  children: [
                    CustomButton(
                      buttonText: 'Create an account',
                      onTap: () {},
                      textColor: AppColor.kWhiteColor,
                      backgroundColor: AppColor.kBlackColor,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    CustomButton(
                      buttonText: 'Login',
                      onTap: () {},
                      textColor: AppColor.kBlackColor,
                      backgroundColor: AppColor.kWhiteColor,
                      borderColor: AppColor.kBlackColor,
                    )
                  ],
                ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
