import 'package:dubai_clinic_management/components.dart';
import 'package:dubai_clinic_management/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderProducts extends StatefulWidget {
  const OrderProducts({Key? key}) : super(key: key);

  @override
  _OrderProductsState createState() => _OrderProductsState();
}

class _OrderProductsState extends State<OrderProducts> {
  String dropdownvalue = 'service';

  // List of items in our dropdown menu
  var items = [
    'service',
    'product',
  ];
  String refferd = "arun";
  var staffs = [
    'arun',
    'akshay',
  ];

  String doctorSel ="dr.akshay";
  var doctors = [
    'dr.arun',
    'dr.akshay',
    'dr.rosh'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Register"),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            columUserTextFileds("customer name*"),
            columUserTextFileds("Customer Age*"),
            columUserTextFileds("Customer phone*"),
            columUserTextFileds("Customer mail"),
            columUserTextFileds("Customer address"),
            columUserTextFileds("Booking date"),
            columUserTextFileds("Booking time"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF0D47A1),
                              Color(0xFF1976D2),
                              Color(0xFF42A5F5),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(8.0),
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, products);
                      },
                      child: Row(
                        children: const [
                          Icon(Icons.add),
                          Text('Select Treatments')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: DropdownButtonFormField(
                // Initial Value
                value: refferd,
                decoration: InputDecoration(
                    labelText: "Referred By",
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: staffs.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    refferd = newValue!;
                  });
                },
              ),
            ),
            columUserTextFileds("Proposed fee"),
            columUserTextFileds("Customer fee"),
            columUserTextFileds("Amount Paid"),
            columUserTextFileds("Due amount"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: DropdownButtonFormField(
                // Initial Value
                value: doctorSel,
                decoration: InputDecoration(
                    labelText: "Initial consultant",
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: doctors.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    doctorSel = newValue!;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: DropdownButtonFormField(
                // Initial Value
                value: doctorSel,
                decoration: InputDecoration(
                    labelText: "Main consultant",
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: doctors.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    doctorSel = newValue!;
                  });
                },
              ),
            ),
            columUserTextFileds("Main consultant"),
            columUserTextFileds("Insurance company"),
            columUserTextFileds("Insurance expiry date"),
            columUserTextFileds("Reminder fee date"),
            columUserTextFileds("Notes"),
            defaultButton("Book Customer", context)
          ],
        ),
      ),
    );
  }
}
