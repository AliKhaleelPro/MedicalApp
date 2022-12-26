
import 'package:get/get.dart';

class BottomNavController extends GetxController{
  RxInt currentIndex = 0.obs ;

  void onChangeIndex (index){
    currentIndex.value = index;
  }


}