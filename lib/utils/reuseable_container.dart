import 'package:flutter/material.dart';
import 'package:software_testing/utils/app_colors.dart';
import 'package:software_testing/utils/text_styles.dart';

Widget ReuseAbleContainer({
  required String? text,
  required IconData? icon,
  IconData? icondata,
  Widget? child,
  required double? height,
  double? width,
  VerticalDivider? verticalDivider,
  Spacer? spacer,
  TextStyle? textStyle,
  SizedBox? size,
  Color? color,
  double? iconSize,
  double? paddingLeft,
  double? paddingRight,
  BorderRadius? borderRadius,
  void Function()? onTap,
}) {
  return Padding(
    padding:
        EdgeInsets.only(left: paddingLeft ?? 14, right: paddingRight ?? 14),
    child: Container(
      width: double.infinity,
      height: height ?? 50,
      decoration: BoxDecoration(
          color: color ?? AppColors.halfWhite,
          borderRadius: borderRadius?? BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$text",
              style: CustomTextstyle(
                size: 14,
                fontWeight: FontWeight.w500,
                lineheight: 19,
              ),
            ),
            const Spacer(),
            Icon(
              icon,
              size: iconSize ?? 23,
              color: AppColors.darkbrwon,
            ),
            VerticalDivider(
              color: AppColors.verticaldividerColor,
              indent: 13,
              endIndent: 13,
            ),
            GestureDetector(
              onTap: onTap,
              child: Icon(
                icondata,
                // Icons.keyboard_arrow_down_outlined,
                size: iconSize ?? 25,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
