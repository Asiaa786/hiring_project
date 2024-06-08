import 'package:flutter/material.dart';
import 'package:software_testing/utils/app_colors.dart';
import 'package:software_testing/utils/text_styles.dart';

class CustomDrawerRow extends StatelessWidget {
  final IconData icon;
  final String text;
  VoidCallback? onTap;
  IconData? arrowIcon;
  Color? decocolor;
  Color? iconColor;
  Color? textColor;
  double? height, width;
  String? subText;
  Color? boxShado;
  FontWeight? fontWeight;

  CustomDrawerRow(
      {Key? key,
      this.boxShado,
      required this.icon,
      required this.text,
      this.onTap,
      this.decocolor,
      this.iconColor,
      this.height,
      this.fontWeight,
      this.width,
      this.subText,
      this.textColor,

      this.arrowIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: decocolor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 24.0,
              color: iconColor ?? Colors.white,
            ),
            const SizedBox(width: 16.0),
            Text(text,
                style: CustomTextstyle(
                    size: 16,
                    fontWeight:fontWeight?? FontWeight.w600,
                    color: textColor ?? Colors.white)),
                    SizedBox(width: 10,),
                    Container(
                      width: 72,
                      height: 19.29,
                      decoration: BoxDecoration(
                        color:  boxShado,
                        borderRadius: BorderRadius.circular(2.57),
                      ),
                      child:  Center(child: Text("$subText",style: CustomTextstyle(size: 10.29, fontWeight: FontWeight.w500, color: textColor ),))),
           
           
            Spacer(),
            GestureDetector(
                onTap: onTap, child: Icon(arrowIcon, color: Colors.white)),
          ],
        ),
      ),
    ));
  }
}
