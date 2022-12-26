
import 'package:flutter/material.dart';
class Offer extends StatelessWidget {
  const Offer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'OFFER',
          style: TextStyle(color: Colors.red,fontSize: 50,fontWeight: FontWeight.bold),
        ),
      ),
    );

  }
}
