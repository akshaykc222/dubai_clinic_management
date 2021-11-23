import 'package:dubai_clinic_management/components.dart';
import 'package:dubai_clinic_management/constants.dart';
import 'package:flutter/material.dart';

class Enquiry extends StatelessWidget {
  const Enquiry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Appointments"),
      body: Column(
        children: [
          columUserTextFileds("search"),
          spacer10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [Text("sort by"), Icon(Icons.arrow_downward)],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [Text("Filter"), Icon(Icons.arrow_downward)],
                ),
              )
            ],
          ),
          const Divider(),
          spacer10,
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ClipRRect(
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
                        Navigator.pushNamed(context, order);
                      },
                      child: Row(
                        children: const [
                          Icon(Icons.add),
                          Text('Book appointment')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          EnquiryCustomer()
        ],
      ),
    );
  }
}

class EnquiryCustomer extends StatefulWidget {
  const EnquiryCustomer({Key? key}) : super(key: key);

  @override
  State<EnquiryCustomer> createState() => _EnquiryCustomerState();
}

class _EnquiryCustomerState extends State<EnquiryCustomer> {
  String dropdownvalue = 'enquired';

  // List of items in our dropdown menu
  var items = ['enquired', 'advance paid', 'completed', 'canceled'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.99,
        decoration: BoxDecoration(
            color: secondrayColor, borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("1"),
                  Text("akshay kc"),
                  Text("19/08/2021")
                ],
              ),
            ),
            spacer10,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("Booked date: 21/08/2021"),
                  Text("Booked time: 9.15am"),
                ],
              ),
            ),
            spacer10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("Status :"),
                const SizedBox(
                  width: 10,
                ),
                DropdownButton(
                  // Initial Value
                  value: dropdownvalue,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
                const Text(
                  "view  details",
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
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
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(Icons.download),
                            Text('Booking report')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
