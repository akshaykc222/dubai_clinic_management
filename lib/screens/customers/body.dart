import 'package:dubai_clinic_management/components.dart';
import 'package:dubai_clinic_management/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customers extends StatelessWidget {
  const Customers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("customers"),
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
          const CustomerDetails(
            name: "askahy kc",
            phone: "7907017542",
          ),
          const CustomerDetails(
            name: "Rahul kp",
            phone: "7907017542",
          ),
        ],
      ),
    );
  }
}

class CustomerDetails extends StatelessWidget {
  final String name;
  final String phone;
  const CustomerDetails({Key? key, required this.name, required this.phone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 99,
        decoration: BoxDecoration(
            color: secondrayColor, borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            const Text("customer id :#fgfdgdfg"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(name),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(phone),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'view all',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
