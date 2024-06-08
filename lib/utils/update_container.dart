import 'package:flutter/material.dart';
import 'package:software_testing/utils/app_colors.dart';
import 'package:software_testing/utils/reuseable_container.dart';
import 'package:software_testing/utils/text_styles.dart';

Widget UpdateContainer() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 14),
     
      child: Container(
        height: 354,
        decoration: BoxDecoration(
          // color: Colors.blueAccent,
          color: AppColors.halfWhite,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14, top: 10),
              child:
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Project Update",
                    style: CustomTextstyle(
                      fontWeight: FontWeight.w700,
                      size: 16,
                      lineheight: 20,
                    ),
                  ),
                  Container(
                    width: 67,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.43),
                      color: AppColors.darkbrwon,
                    ),
                    child: Center(
                      child: Text(
                        "Mark all Read",
                        style: CustomTextstyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          size: 9.74,
                        ),
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.search,
                    size: 24,
                  ),
                  Container(
                    width: 54,
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                        color: AppColors.darkbrwon,
                        width: 0.8,
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("10"),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 22,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: AppColors.darkbrwon,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Icon(
                      Icons.keyboard_arrow_up_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                  )
                ],
              ),
           
           
            ),
            const SizedBox(
              height: 4,
            ),
            Divider(
              color: AppColors.dividerColor,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text(
                        "Update",
                        style: CustomTextstyle(
                          size: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Icon(
                        Icons.update,
                        size: 15,
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14),
                          child: Text(
                            "Your Cheetah Noman Raza 115 / LHR has now picked up your order and is speeding your way. You can reach him 03000090909. To ensure your health and safety, we have tested Noman Raza 115 /LHR’s temperature in the morning and it was 98 degrees Fahrenheit.",
                            style: CustomTextstyle(
                              fontWeight: FontWeight.w500,
                              size: 14,
                              lineheight: 19,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 37,
                          decoration: BoxDecoration(
                            color: AppColors.darkbrwon,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.calendar_month,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Mon, 10 July 2022",
                                  style: CustomTextstyle(
                                      size: 14,
                                      fontWeight: FontWeight.w400,
                                      fontfamily: "Work Sans",
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  ReuseAbleContainer(
                    iconSize: 25,
                      paddingLeft: 0,
                      paddingRight: 0,
                      text: "To ensure your health safety...",
                      spacer: Spacer(),
                      icon: Icons.search,
                      height: 50,
                      icondata: Icons.keyboard_arrow_down_outlined,
                      color: Colors.white),
                  // Container(
                  //   width: double.infinity,
                  //   height: 50,
                  //   decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       borderRadius: BorderRadius.circular(8)),
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(
                  //         left: 15, right: 15),
                  //     child: Row(
                  //       crossAxisAlignment:
                  //           CrossAxisAlignment.center,
                  //       mainAxisAlignment:
                  //           MainAxisAlignment.spaceBetween,
                  //       children: [
                  //         Text(
                  //           "To ensure your health safety...",
                  //           style: CustomTextstyle(
                  //             size: 14,
                  //             fontWeight: FontWeight.w500,
                  //             lineheight: 19,
                  //           ),
                  //         ),
                  //         const Spacer(),
                  //         Icon(
                  //           Icons.search,
                  //           size: 30,
                  //           color: AppColors.darkbrwon,
                  //         ),
                  //         VerticalDivider(
                  //           color: AppColors.verticaldividerColor,
                  //           indent: 13,
                  //           endIndent: 13,
                  //         ),
                  //         const Icon(
                  //           Icons.keyboard_arrow_down_outlined,
                  //           size: 30,
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
             
                ],
              ),
            ),
          ],
        ),
      ),
    
  );
}
