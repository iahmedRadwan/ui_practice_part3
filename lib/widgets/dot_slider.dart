import 'package:flutter/material.dart';

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
        children: [
          DotItem(
            isActiveDot: dotSelectedIndex == 1,
          ),
          DotItem(
            isActiveDot: dotSelectedIndex == 2,
          ),
          DotItem(
            isActiveDot: dotSelectedIndex == 3,
          ),
        ],
      ),
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
        color: isActiveDot ? const Color(0xff12B76A) : const Color(0xffF2F2F2),
      ),
    );
  }
}
