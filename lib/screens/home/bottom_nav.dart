
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/bottom_nav_controller/bottom_nav_controller.dart';
import 'package:medical_app/screens/home/home_page.dart';
import 'package:medical_app/screens/lab_test/lab_test.dart';
import 'package:medical_app/screens/offer/offer.dart';
import 'package:medical_app/screens/order/order.dart';
import 'package:medical_app/screens/profile/profile.dart';

class BottomNav extends StatelessWidget {
   BottomNav({Key? key}) : super(key: key);
   BottomNavController bottomNavController = Get.put(BottomNavController());
  //int currentIndex = 0 ;
  List<Widget> screens=[
     HomePage(),
    const Order(),
    const LabTest(),
    const Offer(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Obx(()=>IndexedStack(index: bottomNavController.currentIndex.value,children: screens),),
      bottomNavigationBar: Obx(()=>BottomNavigationBar(
      currentIndex: bottomNavController.currentIndex.value,

      onTap: (index){
      bottomNavController.onChangeIndex(index);
      },
        selectedLabelStyle:const TextStyle(color:Colors.black,fontWeight: FontWeight.bold),
        selectedItemColor: Colors.black,
        iconSize: 25,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,),
            label: 'Home',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.military_tech ,color: Colors.black,),
            label: 'ORDER',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.science,color: Colors.black,),
            label: 'LAB TEST',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.percent,color: Colors.black,),
            label: 'OFFERS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity,color: Colors.black,),
            label: 'PROFILE',
          ),
        ],
      ),)
    );
  }
}
