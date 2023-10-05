import 'package:flutter/material.dart';
import 'package:health_checkup_store/components/popular_package_card.dart';

class PopularPackages extends StatefulWidget {
  const PopularPackages({super.key});

  @override
  State<PopularPackages> createState() => _PopularPackagesState();
}

class _PopularPackagesState extends State<PopularPackages> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: Theme.of(context).textTheme.titleSmall!.fontSize! * 0.6,
            left: Theme.of(context).textTheme.titleSmall!.fontSize! * 1,
            right: Theme.of(context).textTheme.titleSmall!.fontSize! * 1,
            top: Theme.of(context).textTheme.titleSmall!.fontSize! * 0.3,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Packages",
                style: TextStyle(
                  color: const Color(0xff10217D),
                  fontWeight: FontWeight.bold,
                  fontSize: Theme.of(context).textTheme.titleLarge!.fontSize,
                ),
              ),
            ],
          ),
        ),
        const PopularPackageCard(
          packageName: "Full Body Checkup",
          packageQuantity: 1,
          firstTestName: "CBC",
          secondTestName: "Lipid Profile",
          packageActualPrice: 2000,
        ),
      ],
    );
  }
}
