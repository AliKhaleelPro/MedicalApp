import 'package:flutter/material.dart';
import 'package:medical_app/constant/constant.dart';


class PopularCategories  extends StatelessWidget {
  const PopularCategories ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        title: Text(
          'Popular Categories'.toUpperCase(),
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
    ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30),
        child: CustomGridView(height: double.infinity,),
      ),
    );
  }
}
