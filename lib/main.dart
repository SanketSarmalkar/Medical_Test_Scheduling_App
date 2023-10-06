import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:health_checkup_store/adapters/adapter.g.dart';
import 'package:health_checkup_store/screens/home_page.dart';
//import 'package:hive_flutter/hive_flutter.dart';

void main() {
  // await Hive.initFlutter();

  // Hive.registerAdapter(BookedAppointmentModelAdapter());
  // await Hive.openBox('bookedTests');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(title: 'Title'),
    );
  }
}
