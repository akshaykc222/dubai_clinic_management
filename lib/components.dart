import 'package:dubai_clinic_management/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar customAppBar(String title) => AppBar(
      title: Text(
        title,
        style: const TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      backgroundColor: const Color(0xFFCAE4DB),
    );

Widget searchField = const TextField(
  decoration: InputDecoration(
      prefixIcon: Icon(Icons.search_outlined),
      labelText: search,
      fillColor: Colors.white,
      focusColor: Colors.white,
      filled: true,
      hintText: search,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(35.0)),
      )),
);

const spacer10 = SizedBox(
  height: 10,
);
const spacer20 = SizedBox(
  height: 20,
);
const spacer30 = SizedBox(
  height: 30,
);

Widget columUserTextFileds(String label) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
    child: TextFormField(
      decoration: InputDecoration(
          labelText: label,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          hintText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    ),
  );
}
//button

Widget defaultButton(String label, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
    child: Container(
      width: MediaQuery.of(context).size.width * 6,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: primaryColor),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    ),
  );
}

Widget headingText(String txt) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      txt,
      style: const TextStyle(
          color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
    ),
  );
}
