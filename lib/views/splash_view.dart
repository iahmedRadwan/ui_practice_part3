import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_2/utilities/app_color.dart';
import 'package:flutter_task_2/utilities/app_images.dart';
import 'package:flutter_task_2/views/onboarding_view/onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const String routeName = "SplashView";

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kPrimaryColor,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppImages.splashImage,
            height: 200,
          ),
          const SizedBox(
            width: double.infinity,
            height: 40,
          ),
          const Text(
            "Fresh Fruits",
            style: TextStyle(
                fontSize: 38, fontWeight: FontWeight.w700, color: Colors.white),
          )
        ],
      )),
    );
  }
}
