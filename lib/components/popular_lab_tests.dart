import 'package:flutter/material.dart';
import 'package:health_checkup_store/components/popular_lab_test_card.dart';
import 'package:health_checkup_store/data/popular_lab_test_data.dart';

class PopularLabTests extends StatefulWidget {
  const PopularLabTests({super.key});

  @override
  State<PopularLabTests> createState() => _PopularLabTestsState();
}

class _PopularLabTestsState extends State<PopularLabTests> {
  PopularLabTestData popularLabTestData = PopularLabTestData();

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
          SizedBox(
            height: 500,
            child: ListView.builder(
              itemCount: popularLabTestData.tempData.length ~/ 2,
              itemBuilder: (context, index) {
                // print(popularLabTestData.tempData[index].testActualPrice);
                // print(popularLabTestData.tempData.length);
                // return PopularLabTestCard(
                //   testName: popularLabTestData.tempData[index].testName,
                //   testQuantity: popularLabTestData.tempData[index].testQuantity,
                //   testActualPrice:
                //       popularLabTestData.tempData[index].testActualPrice,
                //   testDiscountedPrice:
                //       popularLabTestData.tempData[index].testDiscountedPrice,
                // );
                return Row(
                  children: [
                    PopularLabTestCard(
                      testName: popularLabTestData.tempData[index].testName,
                      testQuantity:
                          popularLabTestData.tempData[index].testQuantity,
                      testActualPrice:
                          popularLabTestData.tempData[index].testActualPrice,
                      testDiscountedPrice: popularLabTestData
                          .tempData[index].testDiscountedPrice,
                    ),
                    (index + 1 <= popularLabTestData.tempData.length)
                        ? PopularLabTestCard(
                            testName:
                                popularLabTestData.tempData[index + 1].testName,
                            testQuantity: popularLabTestData
                                .tempData[index + 1].testQuantity,
                            testActualPrice: popularLabTestData
                                .tempData[index + 1].testActualPrice,
                            testDiscountedPrice: popularLabTestData
                                .tempData[index + 1].testDiscountedPrice,
                          )
                        : const Placeholder(),
                  ],
                );
              },
            ),
          )
          // const Column(
          //   children: [
          //     Row(
          //       children: [
          //         PopularLabTestCard(
          //           testName: "Thyroid Profile",
          //           testQuantity: 3,
          //           testActualPrice: 1400,
          //           testDiscountedPrice: 999,
          //         ),
          //         PopularLabTestCard(
          //           testName: "Iron Study Test",
          //           testQuantity: 4,
          //           testActualPrice: 1000,
          //           testDiscountedPrice: 599,
          //         ),
          //       ],
          //     ),
          //     Row(
          //       children: [
          //         PopularLabTestCard(
          //           testName: "Blood Test",
          //           testQuantity: 5,
          //           testActualPrice: 2000,
          //           testDiscountedPrice: 1499,
          //         ),
          //         PopularLabTestCard(
          //           testName: "Blood Test",
          //           testQuantity: 5,
          //           testActualPrice: 2000,
          //           testDiscountedPrice: 1499,
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
