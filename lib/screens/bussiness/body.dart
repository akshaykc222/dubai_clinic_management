import 'package:dubai_clinic_management/components.dart';
import 'package:dubai_clinic_management/screens/bussiness/componets/create_business.dart';
import 'package:flutter/material.dart';

class Bussiness extends StatelessWidget {
  const Bussiness({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Bussiness"),
      body: const SingleChildScrollView(
          scrollDirection: Axis.vertical, child: CreateBussiness()),
    );
  }
}
