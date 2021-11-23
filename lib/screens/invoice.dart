import 'package:dubai_clinic_management/components.dart';
import 'package:flutter/material.dart';

class Invoice extends StatelessWidget {
  const Invoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Invoices"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          defaultButton("Create invoice", context),
          defaultButton("Edit invoice", context)
        ],
      ),
    );
  }
}
