import 'package:flutter/material.dart ';

class PopularLabTestCard extends StatefulWidget {
  final String testName;
  final int testQuantity;
  final int testActualPrice;
  final int testDiscountedPrice;
  const PopularLabTestCard({
    super.key,
    required this.testName,
    required this.testQuantity,
    required this.testActualPrice,
    required this.testDiscountedPrice,
  });

  @override
  State<PopularLabTestCard> createState() => _PopularLabTestCardState();
}

class _PopularLabTestCardState extends State<PopularLabTestCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: Theme.of(context).textTheme.titleSmall!.fontSize! / 2,
              right: Theme.of(context).textTheme.titleSmall!.fontSize! / 2,
              left: Theme.of(context).textTheme.titleSmall!.fontSize! / 2,
            ),
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
              widget.testName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.titleSmall!.fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                bottom: Theme.of(context).textTheme.titleSmall!.fontSize! / 2,
                right: Theme.of(context).textTheme.titleSmall!.fontSize! / 2,
                left: Theme.of(context).textTheme.titleSmall!.fontSize! / 2,
              ),
              padding: EdgeInsets.only(
                left: Theme.of(context).textTheme.bodyLarge!.fontSize! * 1.2,
                right: Theme.of(context).textTheme.bodyLarge!.fontSize! * 1.2,
                top: Theme.of(context).textTheme.bodyLarge!.fontSize! / 2,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                border: Border.all(
                  color: const Color(0xff10217D).withOpacity(0.2),
                ),
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
                        Expanded(
                          flex: 4,
                          child: Text("Includes ${widget.testQuantity} tests"),
                        ),
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            "assets/images/popularLabTestLogo.png",
                            scale: 0.8,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        bottom:
                            Theme.of(context).textTheme.bodyLarge!.fontSize! /
                                2),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Get reports in 24 hours",
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.labelSmall!.fontSize,
                      ),
                    ),
                  ),
                  Row(children: [
                    Padding(
                      padding: EdgeInsets.only(
                          right:
                              Theme.of(context).textTheme.bodyLarge!.fontSize! /
                                  2,
                          bottom:
                              Theme.of(context).textTheme.bodyLarge!.fontSize! /
                                  2),
                      child: Text(
                        "₹ ${widget.testDiscountedPrice}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff10217D),
                          fontSize:
                              Theme.of(context).textTheme.bodyLarge!.fontSize,
                        ),
                      ),
                    ),
                    Text(
                      "₹ ${widget.testActualPrice}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize:
                            Theme.of(context).textTheme.labelSmall!.fontSize,
                      ),
                    ),
                  ]),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MaterialButton(
                        color: const Color(0xff10217D),
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              Theme.of(context).textTheme.bodyLarge!.fontSize! /
                                  2),
                        ),
                        minWidth:
                            Theme.of(context).textTheme.bodyLarge!.fontSize! *
                                10,
                        onPressed: () {},
                        child: const Text("Add to Cart"),
                      ),
                      MaterialButton(
                        textColor: const Color(0xff10217D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              Theme.of(context).textTheme.bodyLarge!.fontSize! /
                                  2),
                          side: const BorderSide(
                            color: Color(0xff10217D),
                          ),
                        ),
                        minWidth:
                            Theme.of(context).textTheme.bodyLarge!.fontSize! *
                                10,
                        onPressed: () {},
                        child: const Text("View Details"),
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
