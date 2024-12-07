import 'package:flutter/material.dart';

import '../../../utilities/app_color.dart';

class DotSlider extends StatelessWidget {
  const DotSlider({super.key, required this.dotSelectedIndex});
  final int dotSelectedIndex;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 6,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            3,
            (index) => DotItem(
              isActiveDot: dotSelectedIndex == index,
            ),
          )),
    );
  }
}

class DotItem extends StatelessWidget {
  const DotItem({
    super.key,
    required this.isActiveDot,
  });
  final bool isActiveDot;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 23,
      height: 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: isActiveDot ? AppColor.kGreenColor : AppColor.kGrayColor,
      ),
    );
  }
}
