import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:software_testing/controllers/home_controller.dart';
import 'package:software_testing/utils/app_colors.dart';
import 'package:software_testing/utils/custom_dialogue.dart';
import 'package:software_testing/utils/custom_widgets.dart';
import 'package:software_testing/utils/reauseable_row.dart';
import 'package:software_testing/utils/reuseable_container.dart';
import 'package:software_testing/utils/text_styles.dart';
import 'package:software_testing/utils/update_container.dart';

import 'drawer.dart';

class Home extends StatelessWidget {
  Home({super.key});
  bool isSelected = false;
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      // backgroundColor: Colors.white,
      drawer: DrawerClass(),
      body: SafeArea(
        child: SingleChildScrollView(
         
         
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 264,
                color: AppColors.darkbrwon,
                 
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: double.infinity,
                        color: AppColors.darkbrwon,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 0,
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Builder(
                                  builder: (context) => IconButton(
                                    icon: const Icon(
                                      Icons.menu,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      Scaffold.of(context).openDrawer();
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 13),
                                  child: ClipOval(
                                    child: Image.asset(
                                      'assets/images/men.jpg', // Your image path
                                      width: 32,
                                      height: 32,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 13,right: 13),
                       
                          child: Container(
                              height: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
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
                                    Obx(
                                      () => GestureDetector(
                                        onTap: () {
                                           
                                          homeController.toggleSelection();
                      
                                          Get.dialog(UpdateDialog(context));
                                          homeController.isSelected.value = false;
                                        },
                                        child: Icon(
                                          homeController.isSelected.value
                                              ? Icons.keyboard_arrow_up_outlined
                                              : Icons
                                                  .keyboard_arrow_down_outlined,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 13,right: 13),
                        child:
                         SizedBox(
                          height: 82,
                          child: ListView(
                            physics: const ScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              reusableContainer(
                                icon: Icons.group_outlined,
                                subText: 'User',
                                text: 'Involved',
                              ),
                              const SizedBox(width: 9),
                              reusableContainer(
                                icon: CupertinoIcons.bag,
                                subText: 'Equipment',
                                text: 'Available',
                              ),
                              const SizedBox(width: 9),
                              reusableContainer(
                                icon: Icons.assignment_outlined,
                                subText: 'Tasks',
                                text: 'Completed',
                              ),
                              const SizedBox(width: 9),
                              reusableContainer(
                                icon: Icons.assignment_outlined,
                                subText: '',
                                text: '',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                
              ),
              const SizedBox(height: 15),
              UpdateContainer(),
              const SizedBox(
                height: 10,
              ),
              Obx(() => ReuseAbleContainer(
                    height: homeController.isSelected.value ? 40 : 50,
                    width: double.infinity,
                    icon: Icons.search,
                    text: 'Tasks Quick View',
                    borderRadius: homeController.isSelected.value
                        ? BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          )
                        : BorderRadius.circular(10),
                    verticalDivider: VerticalDivider(
                      color: AppColors.verticaldividerColor,
                      indent: 13,
                      endIndent: 13,
                    ),
                    onTap: () {
                      homeController.toggleSelection();
                    },
                    icondata: homeController.isSelected.value
                        ? Icons.keyboard_arrow_up_outlined
                        : Icons.keyboard_arrow_down_outlined,
                  )),
              Obx(() {
                if (homeController.isSelected.value) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 14, right: 14),
                    child: Container(
                      height: 328,
                      width: 688,
                      color: Colors.white,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        reverse: false,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 0, right: 0),
                              child: Container(
                                color: AppColors.halfWhite,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 11, right: 11),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      reauseableRow(
                                          textStyle: bottomDataTextstyle(),
                                          iconcolor: AppColors.blackColor,
                                          text: "Design Team",
                                          icon: Icons.arrow_drop_down),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      reauseableRow(
                                          textStyle: bottomDataTextstyle(),
                                          iconcolor: AppColors.blackColor,
                                          text: "Creator",
                                          icon: Icons.arrow_drop_down),
                                      SizedBox(
                                        width: 120,
                                      ),
                                      reauseableRow(
                                        textStyle: bottomDataTextstyle(),
                                        iconcolor: AppColors.blackColor,
                                        text: "Assigned to",
                                        icon: Icons.arrow_drop_down,
                                      ),
                                      reauseableRow(
                                        textStyle: bottomDataTextstyle(),
                                        iconcolor: AppColors.blackColor,
                                        text: "Deadline",
                                        icon: Icons.arrow_drop_down,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            reauseAbleTaskList(),
                            reauseAbleTaskList(),
                            reauseAbleTaskList(),
                            reauseAbleTaskList(),
                            reauseAbleTaskList(),
                            reauseAbleTaskList(),
                          ],
                        ),
                      ),
                    ),
                  );
                } else {
                  return SizedBox.shrink();
                }
              }),
            ],
          ),
       
        ),
      ),
    );
  }
}
