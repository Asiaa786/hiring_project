import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:software_testing/controllers/home_controller.dart';
import 'package:software_testing/utils/app_colors.dart';
import 'package:software_testing/utils/custom_drawer_row.dart';
import 'package:software_testing/utils/text_styles.dart';

class DrawerClass extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // padding: EdgeInsets.zero,
            children: [
              Container(
                height: 93,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.drawrHeadColor,
                ),
                child: DrawerHeader(
                  child: Container(
                    width: 216,
                    height: 50,
                    child: Row(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/images/men.jpg', // Your image path
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mohsin Faraz',
                                style: CustomTextstyle(
                                    color: Colors.white,
                                    size: 20,
                                    lineheight: 23.87,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(
                              height: 6,
                            ),
                            Container(
                              width: 154,
                              height: 17,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Center(
                                  child: Text(
                                "Senior Research Associate",
                                style: CustomTextstyle(
                                  fontWeight: FontWeight.w500,
                                  size: 12,
                                ),
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: AppColors.darkbrwon,
                  child: Obx(
                    () => Column(
                      verticalDirection: VerticalDirection.down,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        CustomDrawerRow(
                          icon: CupertinoIcons.search,
                          text: 'Research',
                          onTap: () {
                            homeController.toggleSelection();
                          },
                          arrowIcon: homeController.isSelected.value
                              ? Icons.keyboard_arrow_up_outlined
                              : Icons.keyboard_arrow_down_outlined,
                        ),
                        Obx(() {
                          if (homeController.isSelected.value) {
                            return Container(
                              height: 108,
                              width: double.infinity,
                              color: Colors.white,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    
                                    CustomDrawerRow(
                                      fontWeight: FontWeight.w500,
                                      icon: CupertinoIcons.rocket,
                                      iconColor: AppColors.darkbrwon,
                                      text: 'New Project',
                                      textColor: AppColors.darkbrwon,
                                      subText: "",
                                    ),
                                    CustomDrawerRow(
                                       fontWeight: FontWeight.w500,
                                      icon: CupertinoIcons.square_stack_3d_up,
                                      iconColor: AppColors.darkbrwon,
                                      text: 'My Projects',
                                      textColor: AppColors.darkbrwon,
                                      subText: "",
                                    ),
                                  ]),
                            );
                          } else {
                            return SizedBox.shrink();
                          }
                        }),
                        CustomDrawerRow(
                          icon: Icons.group_outlined,
                          text: 'Team',
                          arrowIcon: Icons.keyboard_arrow_down_outlined,
                        ),
                        CustomDrawerRow(
                          icon: CupertinoIcons.lab_flask,
                          text: 'Laboratory',
                          arrowIcon: Icons.keyboard_arrow_down_outlined,
                        ),
                        CustomDrawerRow(
                          icon: Icons.assignment_outlined,
                          text: 'Task',
                          arrowIcon: Icons.keyboard_arrow_down_outlined,
                        ),
                        CustomDrawerRow(
                          icon: Icons.dataset_outlined,
                          text: 'Data',
                          arrowIcon: Icons.keyboard_arrow_down_outlined,
                        ),
                        CustomDrawerRow(
                          icon: CupertinoIcons.chat_bubble_2,
                          text: 'Discussion',
                          arrowIcon: Icons.keyboard_arrow_down_outlined,
                        ),
                        CustomDrawerRow(
                          icon: Icons.launch_outlined,
                          text: 'Publish',
                          arrowIcon: Icons.keyboard_arrow_down_outlined,
                        ),
                        CustomDrawerRow(
                          icon: CupertinoIcons.money_dollar_circle,
                          text: 'Expense',
                          boxShado: AppColors.boxD9D9D9,
                          subText: "Coming Soon",
                          
                        ),
                        CustomDrawerRow(
                          icon: Icons.settings_outlined,
                          text: 'Setting',
                        ),
                        CustomDrawerRow(
                          icon: CupertinoIcons.ticket,
                          text: 'Ticketing',
                           
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 54,
                width: double.infinity,
                color: AppColors.drawrHeadColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.logout_outlined, color: AppColors.logoutColor),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "Sign Out",
                      style: CustomTextstyle(
                        fontWeight: FontWeight.w500,
                        size: 16,
                        color: AppColors.logoutColor,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
