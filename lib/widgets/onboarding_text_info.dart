import 'package:flutter/widgets.dart';

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
        subTitle != null
            ? Text(
                subTitle!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              )
            : Container(),
        const SizedBox(
          height: 10,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: const Color(0xff000000).withOpacity(0.7)),
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
