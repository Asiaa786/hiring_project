import 'package:flutter/material.dart';

Widget OverlappingAvatars({
  List<String> imageUrls = const [],
  Color? color,
}) {
  return Row(
    children: [
      for (int i = 0; i < imageUrls.length; i++)
        Align(
          widthFactor: 0.6,
          child: ClipOval(
            child: Stack(
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: color ?? Colors.black,
                      width: 1, // Border width
                    ),
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      imageUrls[i],
                      width: 36,
                      height: 36,
                      fit: BoxFit.cover, // Ensure the image covers the circle
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    ],
  );
}