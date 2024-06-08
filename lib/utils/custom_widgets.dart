import 'package:flutter/material.dart';
import 'package:software_testing/utils/app_colors.dart';

import 'text_styles.dart';

Widget reusableContainer({
  double? width,
  Color? color,
  Widget? child,
  required IconData icon,
  required String? subText,
  required String? text,
}) {
  return Container(
    width: 105,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      color: Colors.white,
    ),
    child: Column(
      children: [
        const SizedBox(
          height: 4,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: AppColors.darkbrwon,
                size: 30,
              ),
              const SizedBox(
                width: 2,
              ),
              Text(
                '1125',
                style: CustomTextstyle(
                    fontWeight: FontWeight.w700, size: 18, lineheight: 20),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(6),
                bottomLeft: Radius.circular(6)),
            color: AppColors.halfWhite,
          ),
          width: double.infinity,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$subText",
                  style: CustomTextstyle(),
                ),
                Text("$text", style: CustomTextstyle()),
              ]),
        )
      ],
    ),
  );
}
