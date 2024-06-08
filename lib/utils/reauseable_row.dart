import 'package:flutter/material.dart';

import 'package:software_testing/utils/app_colors.dart';
import 'package:software_testing/utils/overlaping_circle.dart';
import 'package:software_testing/utils/text_styles.dart';

Widget reauseableRow(
    {String? text,
    IconData? icon,
    String? subText,
    Color? textColor,
    TextStyle? textStyle,
    Color? iconcolor}) {
  return Row(
    children: [
      Text(
        "$text",
        style: textStyle ??
            CustomTextstyle(
                size: 14,
                fontWeight: FontWeight.w500,
                color: textColor ?? Colors.white,
                lineheight: 20),
      ),
      Icon(
        icon,
        color: iconcolor ?? Colors.white,
      )
    ],
  );
}

Widget reuseableRows(
    {String? text,
    required String? leadingtext,
    Color? color,
    required Color? textColor}) {
  return Expanded(
    child: Container(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 11,
            right: 20,
          ),
          child: Column(
            children: [
              Row(children: [
                Text(
                  'First Research Project',
                  style: CustomTextstyle(
                    size: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.darkbrwon,
                  ),
                ),
                Spacer(),
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.43),
                    color: color,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      child: Text(
                        "$leadingtext",
                        style: CustomTextstyle(
                            size: 9.74,
                            fontWeight: FontWeight.w500,
                            color: textColor),
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: AppColors.lightDfDf,
              ),
            ],
          ),
        )),
  );
}

Widget reauseAbleTaskList() {
  return Padding(
    padding: const EdgeInsets.only(left: 11, right: 11, top: 10),
    child: Row(
      children: [
        Text("Design Team"),
        SizedBox(
          width: 20,
        ),
        Row(
          children: [
            ClipOval(
              child: Stack(
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.black,
                        width: 1, // Border width
                      ),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/men.jpg",
                        width: 36,
                        height: 36,
                        fit: BoxFit.cover, // Ensure the image covers the circle
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text("Mohsin Far...")
          ],
        ),
        SizedBox(
          width: 70,
        ),
        OverlappingAvatars(
          imageUrls: [
            'assets/images/men.jpg',
            'assets/images/men.jpg',
            'assets/images/men.jpg',
          ],
          color: Colors.white,
        )
      ],
    ),
  );
}
