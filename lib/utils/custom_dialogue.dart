// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/utils.dart';
// import 'package:software_testing/controllers/navBar_controller.dart';
// import 'package:software_testing/utils/app_colors.dart';
// import 'package:software_testing/utils/reauseable_row.dart';
// import 'package:software_testing/utils/text_styles.dart';

// final HomeController homeController = Get.put(HomeController());

// Widget CustomDialog() {
//   return Dialog(
//     child: Container(
//       width: 375,
//       height: 622,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
           
//               Container(
//               height: 50,
//               decoration: BoxDecoration(
//                 color: AppColors.halfWhite,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(8),
//                   topRight: Radius.circular(8),
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 15),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Icon(
//                       Icons.search,
//                       color: AppColors.darkbrwon,
//                     ),
//                     const SizedBox(width: 5),
//                     Text(
//                       "Test Project with Mohsin",
//                       style: CustomTextstyle(
//                         size: 14,
//                         fontWeight: FontWeight.w600,
//                         lineheight: 20,
//                       ),
//                     ),
//                     const Spacer(),
//                     GestureDetector(
//                       onTap: () {
//                         homeController.toggleSelection();
//                         homeController.isSelected.value
//                             ? homeController.isSelected.value = false
//                             : homeController.isSelected.value = true;
//                       },
//                       child: Icon(
//                         homeController.isSelected.value
//                             ? Icons.keyboard_arrow_up_outlined
//                             : Icons.keyboard_arrow_down_outlined,
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
          
//           Container(
//               height: 158,
//               decoration: BoxDecoration(
//                 color: AppColors.darkbrwon,
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Expanded(
//                     child: Padding(
//                       padding: const EdgeInsets.all(11.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             width: 222,
//                             height: 40,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: Row(
//                               children: [
//                                 SizedBox(
//                                   width: 10,
//                                 ),
//                                 Icon(Icons.search),
//                                 SizedBox(
//                                   width: 5,
//                                 ),
//                                 Text(
//                                   'Search',
//                                   style: CustomTextstyle(
//                                       fontWeight: FontWeight.w600, size: 14),
//                                 )
//                               ],
//                             ),
//                           ),
//                           Container(
//                             width: 77,
//                             height: 40,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Text(
//                                   '10',
//                                   style: CustomTextstyle(
//                                       fontWeight: FontWeight.w600, size: 14),
//                                 ),
//                                 Icon(Icons.keyboard_arrow_down_outlined),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(
//                         left: 11, right: 15, top: 10, bottom: 10),
//                     child: Row(
//                       children: [
//                         Text(
//                           "Project List",
//                           style: CustomTextstyle(
//                               size: 16,
//                               fontWeight: FontWeight.w700,
//                               color: Colors.white,
//                               lineheight: 20),
//                         ),
//                         Spacer(),
//                         Icon(
//                           Icons.list_alt_outlined,
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                   Divider(
//                     color: AppColors.lightDfDf,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 11, right: 11),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             reauseableRow(
//                               text: "Research name",
//                               icon: Icons.arrow_drop_down,
//                             )
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             reauseableRow(
//                               text: "Status",
//                               icon: Icons.arrow_drop_down,
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               )),
//           SizedBox(
//             height: 15,
//           ),

//           reuseableRows(
//               leadingtext: "On Going",
//               color: AppColors.blueColor,
//               textColor: Colors.white),
//           reuseableRows(
//               leadingtext: "Delayed",
//               color: AppColors.orangeColor,
//               textColor: Colors.white),
//           reuseableRows(
//               leadingtext: "Completed",
//               color: AppColors.greenColor,
//               textColor: Colors.white),
//           reuseableRows(
//               leadingtext: "On Going",
//               color: AppColors.blueColor,
//               textColor: Colors.white),
//           reuseableRows(
//               leadingtext: "On Going",
//               color: AppColors.blueColor,
//               textColor: Colors.white),
//           reuseableRows(
//               leadingtext: "On Going",
//               color: AppColors.blueColor,
//               textColor: Colors.white),
//           reuseableRows(
//               leadingtext: "Delayed",
//               color: AppColors.orangeColor,
//               textColor: Colors.white),
//           reuseableRows(
//               leadingtext: "Delayed",
//               color: AppColors.orangeColor,
//               textColor: Colors.white),

//           //        Expanded(child: Container(
//           //         height: 200,
//           //         child: ListView.builder(
//           //           itemCount: 8,
//           //           itemBuilder: (context, index) {
//           //             return Padding(
//           //               padding: const EdgeInsets.only(left: 11, right: 20,top: 10),
//           //               child: Column(
//           //                 children: [
//           //                   Row(
//           //                     children: [
//           //                       Text('First Research Project'),
//           //                       Spacer(),
//           //                        Container(
//           //                       height: 20,
//           //                       color: Colors.red,
//           //                       child: Text("On Going"),
//           //                     ),]
//           //                   ),
//           //                   Divider(
//           //                     color: AppColors.lightDfDf,
//           //                   ),
//           //                 ],
//           //               ),
//           //             );                }
//           //        ))
//           // )
//         ],
//       ),
//     ),
//   );
// }


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:software_testing/controllers/home_controller.dart';
import 'package:software_testing/utils/app_colors.dart';
import 'package:software_testing/utils/reauseable_row.dart';
import 'package:software_testing/utils/text_styles.dart';

final HomeController homeController = Get.put(HomeController());

Widget UpdateDialog(BuildContext context) {
  return Dialog(
    child: Container(
      width: MediaQuery.of(context).size.width * 0.9, // Adjust dialog width based on screen width
      height: MediaQuery.of(context).size.height * 0.8, // Adjust dialog height based on screen height
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.halfWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search,
                    color: AppColors.darkbrwon,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "Test Project with Mohsin",
                    style: CustomTextstyle(
                      size: 14,
                      fontWeight: FontWeight.w600,
                      lineheight: 20,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      homeController.toggleSelection();
                      homeController.isSelected.value
                          ? homeController.isSelected.value = false
                          : homeController.isSelected.value = true;
                    },
                    child: Icon(
                      homeController.isSelected.value
                          ? Icons.keyboard_arrow_up_outlined
                          : Icons.keyboard_arrow_down_outlined,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 158,
            decoration: BoxDecoration(
              color: AppColors.darkbrwon,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
  child: Padding(
    padding: const EdgeInsets.all(11.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.search),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Search',
                  style: CustomTextstyle(
                      fontWeight: FontWeight.w600, size: 14),
                )
              ],
            ),
          ),
        ),
        SizedBox(width: 10), // Add some spacing between the containers
        Container(
          width: 77,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '10',
                style: CustomTextstyle(
                    fontWeight: FontWeight.w600, size: 14),
              ),
              Icon(Icons.keyboard_arrow_down_outlined),
            ],
          ),
        ),
      ],
    ),
  ),
),

                // Expanded(
                //   child: Padding(
                //     padding: const EdgeInsets.all(11.0),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Container(
                           
                //           height: 40,
                //           decoration: BoxDecoration(
                //             color: Colors.white,
                //             borderRadius: BorderRadius.circular(8),
                //           ),
                //           child: Row(
                //             children: [
                //               SizedBox(
                //                 width: 10,
                //               ),
                //               Icon(Icons.search),
                //               SizedBox(
                //                 width: 5,
                //               ),
                //               Text(
                //                 'Search',
                //                 style: CustomTextstyle(
                //                     fontWeight: FontWeight.w600, size: 14),
                //               )
                //             ],
                //           ),
                //         ),
                //         Container(
                //           width: 77,
                //           height: 40,
                //           decoration: BoxDecoration(
                //             color: Colors.white,
                //             borderRadius: BorderRadius.circular(8),
                //           ),
                //           child: Row(
                //             mainAxisAlignment: MainAxisAlignment.center,
                //             children: [
                //               Text(
                //                 '10',
                //                 style: CustomTextstyle(
                //                     fontWeight: FontWeight.w600, size: 14),
                //               ),
                //               Icon(Icons.keyboard_arrow_down_outlined),
                //             ],
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
               
               
                Padding(
                  padding: const EdgeInsets.only(
                      left: 11, right: 15, top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        "Project List",
                        style: CustomTextstyle(
                            size: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            lineheight: 20),
                      ),
                      Spacer(),
                      Icon(
                        Icons.list_alt_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Divider(
                  color: AppColors.lightDfDf,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11, right: 11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          reauseableRow(
                            text: "Research name",
                            icon: Icons.arrow_drop_down,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          reauseableRow(
                            text: "Status",
                            icon: Icons.arrow_drop_down,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          reuseableRows(
              leadingtext: "On Going",
              color: AppColors.blueColor,
              textColor: Colors.white),
          reuseableRows(
              leadingtext: "Delayed",
              color: AppColors.orangeColor,
              textColor: Colors.white),
          reuseableRows(
              leadingtext: "Completed",
              color: AppColors.greenColor,
              textColor: Colors.white),
          reuseableRows(
              leadingtext: "On Going",
              color: AppColors.blueColor,
              textColor: Colors.white),
          reuseableRows(
              leadingtext: "On Going",
              color: AppColors.blueColor,
              textColor: Colors.white),
          reuseableRows(
              leadingtext: "On Going",
              color: AppColors.blueColor,
              textColor: Colors.white),
          reuseableRows(
              leadingtext: "Delayed",
              color: AppColors.orangeColor,
              textColor: Colors.white),
          reuseableRows(
              leadingtext: "Delayed",
              color: AppColors.orangeColor,
              textColor: Colors.white),
        ],
      ),
    ),
  );
}

// void showCustomDialog(BuildContext context) {
//   homeController.isSelected.value = false;
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return CustomDialog();
//     },
//   );
// }
