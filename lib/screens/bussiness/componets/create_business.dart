import 'package:dubai_clinic_management/constants.dart';
import 'package:flutter/material.dart';

import '../../../components.dart';

class CreateBussiness extends StatefulWidget {
  const CreateBussiness({Key? key}) : super(key: key);

  @override
  _CreateBussinessState createState() => _CreateBussinessState();
}

class _CreateBussinessState extends State<CreateBussiness> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // columUserTextFileds("Branch Under"),
        columUserTextFileds("Business Name"),
        columUserTextFileds("Address"),
        columUserTextFileds("location"),
        columUserTextFileds("Pincode"),
        columUserTextFileds("Country"),
        columUserTextFileds("State"),
        columUserTextFileds("City"),
        columUserTextFileds("tax number"),
        defaultButton(create, context)
      ],
    );
  }
}
