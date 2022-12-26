
import 'package:flutter/material.dart';

import '../data/data.dart';

class CustomGridView extends StatelessWidget {
  double height;
   CustomGridView({required this.height,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    return  SizedBox(
      height: h * height,
      child: GridView.builder(
          gridDelegate:
          const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              childAspectRatio: 1.8 / 2.7,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemCount: productList.length,
          itemBuilder: (BuildContext ctx, index) {
            return Column(
              children: [
                Container(
                  height: h * .14,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(15)),
                  child:Image.asset(productList[index].img.toString(),scale: 2.5,),
                ),
                SizedBox(
                  height: h * .01,
                ),
                Text(
                  productList[index].prodName.toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ],
            );
          }),
    );
  }
}