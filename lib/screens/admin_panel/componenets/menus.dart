import 'dart:developer';

import 'package:dubai_clinic_management/components.dart';
import 'package:dubai_clinic_management/constants.dart';
import 'package:dubai_clinic_management/screens/admin_panel/models/menu_model.dart';
import 'package:flutter/material.dart';

class AdminMenu extends StatefulWidget {
  const AdminMenu({Key? key}) : super(key: key);

  @override
  _AdminMenuState createState() => _AdminMenuState();
}

class _AdminMenuState extends State<AdminMenu> {
  final List<MenuModel> menuData = [
    MenuModel(title: "Roles", icon: Icons.vpn_key_outlined),
    MenuModel(
      title: "User",
      icon: Icons.person,
    ),
    MenuModel(title: "Business", icon: Icons.business_center_outlined),
    MenuModel(title: "Categories", icon: Icons.room_service_outlined),
    MenuModel(title: "Products", icon: Icons.production_quantity_limits),
    MenuModel(title: "Reports", icon: Icons.vpn_key_outlined),
    MenuModel(title: "Designations", icon: Icons.person),
    MenuModel(title: "Appointments", icon: Icons.contact_page),
    MenuModel(title: "Customers", icon: Icons.person),
    MenuModel(title: "Invoice", icon: Icons.inventory)
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 5,
            ),
            itemCount: menuData.length,
            shrinkWrap: true,
            itemBuilder: (_, index) {
              return MenuCard(
                icon: menuData[index].icon,
                title: menuData[index].title,
              );
            }),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const MenuCard({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        switch (title) {
          case "Roles":
            Navigator.pushNamed(context, roles);

            break;
          case "User":
            Navigator.pushNamed(context, userCreation);

            break;
          case "Business":
            Navigator.pushNamed(context, business);

            break;

          case "Categories":
            Navigator.pushNamed(context, services);

            break;
          case "Products":
            Navigator.pushNamed(context, products);

            break;
          case "Appointments":
            Navigator.pushNamed(context, enquiry);
            break;
          case "Customers":
            Navigator.pushNamed(context, customers);
            break;
          case "Designations":
            Navigator.pushNamed(context, designation);
            break;
          case "Reports":
            Navigator.pushNamed(context, reports);
            break;
          case "Invoice":
            Navigator.pushNamed(context, invoices);
            break;
          default:
            Navigator.pushNamed(context, "defualt");
            break;
        }
      },
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
                decoration: const BoxDecoration(
                    color: boxColor, shape: BoxShape.circle),
                child: Center(
                  child: Icon(icon),
                )),
          ),
          spacer10,
          Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
          )
        ],
      ),
    );
  }
}
