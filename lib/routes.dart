import 'package:dubai_clinic_management/constants.dart';
import 'package:dubai_clinic_management/screens/Desingation/body.dart';
import 'package:dubai_clinic_management/screens/Roles/body.dart';
import 'package:dubai_clinic_management/screens/admin_panel/body.dart';
import 'package:dubai_clinic_management/screens/bussiness/body.dart';
import 'package:dubai_clinic_management/screens/customers/body.dart';
import 'package:dubai_clinic_management/screens/enquiry/body.dart';
import 'package:dubai_clinic_management/screens/invoice.dart';
import 'package:dubai_clinic_management/screens/products/body.dart';
import 'package:dubai_clinic_management/screens/reports/body.dart';
import 'package:dubai_clinic_management/screens/services/body.dart';
import 'package:dubai_clinic_management/screens/services/componets/order.dart';
import 'package:dubai_clinic_management/screens/services/componets/services.dart';
import 'package:dubai_clinic_management/screens/services/componets/sub_category.dart';
import 'package:dubai_clinic_management/screens/user/body.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RouterPage {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case adminPanel:
        return MaterialPageRoute(builder: (_) => const AdminPanel());
      case roles:
        return MaterialPageRoute(builder: (_) => const UserRoles());
      case userCreation:
        return MaterialPageRoute(builder: (_) => const UserCreation());
      case business:
        return MaterialPageRoute(builder: (_) => const Bussiness());
      case services:
        return MaterialPageRoute(builder: (_) => const Services());
      case products:
        return MaterialPageRoute(builder: (_) => const Products());
      case subCategory:
        return MaterialPageRoute(builder: (_) => const SubCategory());
      case servicesAdd:
        return MaterialPageRoute(builder: (_) => const ServicesAdd());
      case order:
        return MaterialPageRoute(builder: (_) => const OrderProducts());
      case enquiry:
        return MaterialPageRoute(builder: (_) => const Enquiry());
      case customers:
        return MaterialPageRoute(builder: (_) => const Customers());
      case designation:
        return MaterialPageRoute(builder: (_) => const Designations());
      case reports:
        return MaterialPageRoute(builder: (_) => const Reports());
      case invoices:
        return MaterialPageRoute(builder: (_) => const Invoice());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
