import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:software_testing/controllers/home_controller.dart';
import 'package:software_testing/screens/home.dart';
import 'package:software_testing/utils/app_colors.dart';
import 'package:software_testing/utils/text_styles.dart';

class HomeScreen extends StatelessWidget {
  final HomeController bottomNavController =
      Get.put(HomeController());

  final List<Widget> pages = [
      Home(),
    const Center(child: Text('Search Page')),
    const Center(child: Text('Profile Page')),
     const Center(child: Text('Need Help')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[bottomNavController.selectedIndex.value]),
      bottomNavigationBar: Obx(
        () => Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, -1),
              ),
            ],
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
             
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildNavItem(icon: Icons.home_outlined, label: 'Home', index: 0),
                  _buildNavItem(
                      icon: Icons.quick_contacts_mail_outlined, label: 'Quick Action', index: 1),
                  _buildNavItem(
                      icon: CupertinoIcons.chat_bubble_2, label: 'Recent Discussion', index: 2),
                        _buildNavItem(
                      icon: Icons.help_outline, label: 'Need Help', index: 3),
                ],
              ),
            
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(
      {required IconData icon, required String label, required int index}) {
    bool isSelected = bottomNavController.selectedIndex.value == index;
    return GestureDetector(
      onTap: () => bottomNavController.changeIndex(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            decoration: BoxDecoration(
              // color: isSelected ? Colors.blue.shade100 : Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Icon(
                  icon,
                  color:  AppColors.blackColor,
                  size: 25.0,
                ),
                const SizedBox(height: 5.0),
                Text(
                  label,
                  style: bottomNavTextStyle (
                    color: isSelected ? AppColors.blackColor: AppColors.navTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
