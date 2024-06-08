 

import 'package:get/get.dart';
 

class HomeController extends GetxController {
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
   var isSelected = false.obs;

  void toggleSelection() {
    isSelected.value = !isSelected.value;
  }

}