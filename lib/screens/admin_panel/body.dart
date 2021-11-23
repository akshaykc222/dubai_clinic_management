import 'package:dubai_clinic_management/components.dart';
import 'package:dubai_clinic_management/constants.dart';
import 'package:dubai_clinic_management/screens/admin_panel/componenets/menus.dart';
import 'package:flutter/material.dart';

class AdminPanel extends StatelessWidget {
  const AdminPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('ADMIN PANEL'),
      body: Container(
        color: Colors.white60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            spacer10,
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              child: searchField,
            ),
            spacer10,
            const AdminMenu()
          ],
        ),
      ),
    );
  }
}
