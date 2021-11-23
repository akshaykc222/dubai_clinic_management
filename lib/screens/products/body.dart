import 'package:dubai_clinic_management/components.dart';
import 'package:dubai_clinic_management/screens/products/componets/categrory.dart';
import 'package:dubai_clinic_management/screens/products/componets/products.dart';
import 'package:flutter/material.dart';
    class Products extends StatelessWidget {
      const Products({Key? key}) : super(key: key);
    
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: customAppBar("Treatment"),
          body: Stack(
            children:[ SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: const [
                CategorySelection(),
                 ProductDetails(),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: defaultButton("add", context)))
            ]
          ),

        );
      }
    }
  class AddTreatments extends StatefulWidget {
    const AddTreatments({Key? key}) : super(key: key);

    @override
    _AddTreatmentsState createState() => _AddTreatmentsState();
  }

  class _AddTreatmentsState extends State<AddTreatments> {
      bool isService=false;
      String taxType = "gst";
      var taxItems = ["gst", "tax#1"];
      String service = "service";
      var serItems = ["service", "products"];
    @override
    Widget build(BuildContext context) {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            headingText("Add treatment"),
            columUserTextFileds("Title"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: DropdownButtonFormField(
                // Initial Value
                value: service,
                decoration: InputDecoration(
                    labelText: "type",
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: serItems.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    service = newValue!;
                    isService=!isService;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: DropdownButtonFormField(
                // Initial Value
                value: taxType,
                decoration: InputDecoration(
                    labelText: "tax",
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: taxItems.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    taxType = newValue!;
                  });
                },
              ),
            ),
            Visibility(
                visible: isService,
                child: Column(
                  children: [

                    columUserTextFileds("Purchase rate"),
                    columUserTextFileds("Mrp"),
                    columUserTextFileds("Sales Percentage"),
                    columUserTextFileds("Sales Rate"),
                    columUserTextFileds("Expiry date")
                  ],
                )
            ),

            columUserTextFileds("Sales Rate"),
            Visibility(
                visible: !isService,
                child: columUserTextFileds("Duration")),
            InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: defaultButton("Add", context))
          ],
        ),
      );
    }
  }
