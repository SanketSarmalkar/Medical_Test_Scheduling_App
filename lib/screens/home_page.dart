import 'package:flutter/material.dart';
import 'package:health_checkup_store/components/popular_lab_tests.dart';
import 'package:health_checkup_store/components/popular_packages.dart';

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: Theme.of(context).textTheme.titleLarge),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Color(0xff10217D)),
            onPressed: () {},
          ),
        ],
        shadowColor: Colors.transparent,
      ),
      body: ListView(
        children: const [
          PopularLabTests(),
          PopularPackages(),
        ],
      ),
    );
  }
}
