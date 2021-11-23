import 'package:dubai_clinic_management/components.dart';
import 'package:dubai_clinic_management/constants.dart';
import 'package:dubai_clinic_management/screens/Roles/components/current_user.dart';
import 'package:dubai_clinic_management/screens/Roles/components/role_filelds.dart';
import 'package:flutter/material.dart';

class UserRoles extends StatelessWidget {
  const UserRoles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("User Roles"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: const [CurrentUser(), RoleFields()],
        ),
      ),

    );
  }
}
