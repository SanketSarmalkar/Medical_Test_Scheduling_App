import 'package:flutter/material.dart';
import 'package:health_checkup_store/components/popular_lab_test_card.dart';

class PopularLabTests extends StatefulWidget {
  const PopularLabTests({super.key});

  @override
  State<PopularLabTests> createState() => _PopularLabTestsState();
}

class _PopularLabTestsState extends State<PopularLabTests> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        Theme.of(context).textTheme.titleSmall!.fontSize!,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: Theme.of(context).textTheme.titleSmall!.fontSize! * 1,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Lab Tests",
                  style: TextStyle(
                    color: const Color(0xff10217D),
                    fontWeight: FontWeight.bold,
                    fontSize: Theme.of(context).textTheme.titleLarge!.fontSize,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "View More",
                      style: TextStyle(
                        color: const Color(0xff10217D),
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        fontSize:
                            Theme.of(context).textTheme.titleSmall!.fontSize,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: const Color(0xff10217D),
                      size: Theme.of(context).textTheme.titleSmall!.fontSize,
                      weight: FontWeight.w100.value.toDouble(),
                    )
                  ],
                )
              ],
            ),
          ),
          const Column(
            children: [
              Row(
                children: [
                  PopularLabTestCard(
                    TestName: "Thyroid Profile",
                    TestQuantity: 3,
                    TestActualPrice: 1400,
                    TestDiscountedPrice: 999,
                  ),
                  PopularLabTestCard(
                    TestName: "Iron Study Test",
                    TestQuantity: 4,
                    TestActualPrice: 1000,
                    TestDiscountedPrice: 599,
                  ),
                ],
              ),
              Row(
                children: [
                  PopularLabTestCard(
                    TestName: "Blood Test",
                    TestQuantity: 5,
                    TestActualPrice: 2000,
                    TestDiscountedPrice: 1499,
                  ),
                  PopularLabTestCard(
                    TestName: "Blood Test",
                    TestQuantity: 5,
                    TestActualPrice: 2000,
                    TestDiscountedPrice: 1499,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
