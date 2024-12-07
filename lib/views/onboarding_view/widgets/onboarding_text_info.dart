import 'package:flutter/widgets.dart';
import 'package:flutter_task_2/utilities/app_color.dart';

class OnboardingTextInfo extends StatelessWidget {
  const OnboardingTextInfo({
    super.key,
    required this.title,
    this.subTitle,
    required this.description,
  });
  final String title;
  final String? subTitle;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: AppColor.kBlackColor.withOpacity(0.7)),
        ),
      ],
    );
  }
}
