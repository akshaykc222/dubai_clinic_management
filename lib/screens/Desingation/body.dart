import 'package:dubai_clinic_management/components.dart';
import 'package:flutter/material.dart';

class Designations extends StatelessWidget {
  const Designations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Designations"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          columUserTextFileds("designation title"),
          defaultButton("create", context)
        ],
      ),
    );
  }
}
