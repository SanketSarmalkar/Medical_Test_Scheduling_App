import 'dart:ffi';

import 'package:flutter/material.dart ';

class PopularLabTestCard extends StatefulWidget {
  final String TestName;
  final int TestQuantity;
  final int TestActualPrice;
  final int TestDiscountedPrice;
  const PopularLabTestCard({
    super.key,
    required this.TestName,
    required this.TestQuantity,
    required this.TestActualPrice,
    required this.TestDiscountedPrice,
  });

  @override
  State<PopularLabTestCard> createState() => _PopularLabTestCardState();
}

class _PopularLabTestCardState extends State<PopularLabTestCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(
              top: Theme.of(context).textTheme.titleSmall!.fontSize!,
              bottom: Theme.of(context).textTheme.titleSmall!.fontSize!,
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
              color: const Color(0xff10217D).withOpacity(0.8),
            ),
            child: Text(
              widget.TestName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.titleSmall!.fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.only(
                left: Theme.of(context).textTheme.bodyLarge!.fontSize! * 1.5,
                right: Theme.of(context).textTheme.bodyLarge!.fontSize! * 1.5,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        bottom:
                            Theme.of(context).textTheme.bodyLarge!.fontSize!),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Includes ${widget.TestQuantity} tests"),
                        Image.asset(
                          "assets/images/popularLabTestLogo.png",
                          scale: 0.8,
                        )
                      ],
                    ),
                  ),
                  Text(
                    "Get reports in 24 hours",
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.labelSmall!.fontSize,
                    ),
                  ),
                  Row(children: [
                    Padding(
                      padding: EdgeInsets.only(
                          right:
                              Theme.of(context).textTheme.bodyLarge!.fontSize! /
                                  2),
                      child: Text(
                        "₹ ${widget.TestDiscountedPrice}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff10217D),
                          fontSize:
                              Theme.of(context).textTheme.bodyLarge!.fontSize,
                        ),
                      ),
                    ),
                    Text(
                      "₹ ${widget.TestActualPrice}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize:
                            Theme.of(context).textTheme.labelSmall!.fontSize,
                      ),
                    ),
                  ]),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Add to Cart"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("View Details"),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
