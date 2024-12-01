import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_task_2/views/onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const OnBoardingView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEC54B),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/images/splash_img.svg",
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
