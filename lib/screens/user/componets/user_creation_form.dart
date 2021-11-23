import 'package:dubai_clinic_management/constants.dart';
import 'package:dubai_clinic_management/providers/bussiness_provider.dart';
import 'package:dubai_clinic_management/providers/roles_provider.dart';
import 'package:dubai_clinic_management/screens/user/componets/add_company.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../components.dart';

class UserCreationForm extends StatefulWidget {
  const UserCreationForm({Key? key}) : super(key: key);

  @override
  _UserCreationFormState createState() => _UserCreationFormState();
}

class _UserCreationFormState extends State<UserCreationForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        columUserTextFileds("Name"),
        columUserTextFileds("Email"),
        columUserTextFileds("Phone"),
        columUserTextFileds("Designation"),
        columUserTextFileds("Password"),
        columUserTextFileds("Confirm Password"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Access company',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            InkWell(
                onTap: () {
                  print("Dgdfg");
                  showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      builder: (BuildContext context) {
                        return Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: const SelectBussines(),
                        );
                      });
                },
                child: const Icon(
                  Icons.add,
                  size: 25,
                ))
          ],
        ),
        const AddCompany(),
        defaultButton(add, context)
      ],
    );
  }
}

class SelectBussines extends StatefulWidget {
  const SelectBussines({Key? key}) : super(key: key);

  @override
  State<SelectBussines> createState() => _SelectBussinesState();
}

class _SelectBussinesState extends State<SelectBussines> {
  String selectedBussines = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Add Company access",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Consumer<BussinessProvider>(builder: (context, provider, child) {
            return DropdownButtonFormField(
              value: provider.selectedBusiness,
              icon: const Icon(Icons.keyboard_arrow_down),
              decoration: InputDecoration(
                  labelText: "Bussiness",
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
              items: provider.bussinesList
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (String? value) {
                setState(() {
                  provider.setDropDownValue(value!);
                });
              },
            );
          }),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Consumer<RoleProvider>(builder: (context, provider, child) {
            return DropdownButtonFormField(
              value: provider.selectedDropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              decoration: InputDecoration(
                  labelText: "Role",
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
              items: provider.roleList
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (String? value) {
                setState(() {
                  provider.setSelectedList(value!);
                });
              },
            );
          }),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
              onTap: () {
                Provider.of<BussinessProvider>(context, listen: false)
                    .setSelectedBussiness();
                Navigator.pop(context);
              },
              child: defaultButton(add, context)),
        )
      ],
    );
  }
}
