import 'package:dubai_clinic_management/components.dart';
import 'package:dubai_clinic_management/screens/user/componets/user_creation_form.dart';
import 'package:flutter/material.dart';

class UserCreation extends StatelessWidget {
  const UserCreation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("User Creation"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: const [UserCreationForm()],
        ),
      ),
    );
  }
}
