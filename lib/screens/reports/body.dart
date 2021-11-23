import 'package:dubai_clinic_management/components.dart';
import 'package:flutter/material.dart';

class Reports extends StatelessWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Reports"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          defaultButton("Customer wise report", context),
          spacer10,
          defaultButton("Treatment wise report", context),
          spacer10,
          defaultButton("Doctor wise report", context),
          spacer10,
          defaultButton("Staff wise report", context),
          spacer10,

        ],
      ),
    );
  }
}
