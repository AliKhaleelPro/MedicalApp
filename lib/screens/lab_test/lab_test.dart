
import 'package:flutter/material.dart';
class LabTest extends StatelessWidget {
  const LabTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'LAB TEST',
          style: TextStyle(color: Colors.red,fontSize: 50,fontWeight: FontWeight.bold),
        ),
      ),
    );

  }
}
