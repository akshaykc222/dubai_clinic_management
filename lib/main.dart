import 'package:dubai_clinic_management/constants.dart';
import 'package:dubai_clinic_management/providers/bussiness_provider.dart';
import 'package:dubai_clinic_management/providers/roles_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BussinessProvider()),
        ChangeNotifierProvider(create: (context) => RoleProvider())
      ],
      child: MaterialApp(
        title: 'Clinic Management',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: RouterPage.generateRoute,
        initialRoute: adminPanel,
      ),
    );
  }
}
