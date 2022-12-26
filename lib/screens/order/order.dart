
import 'package:flutter/material.dart';
class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'ORDER',
          style: TextStyle(color: Colors.red,fontSize: 50,fontWeight: FontWeight.bold),
        ),
      ),
    );

  }
}
