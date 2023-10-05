import 'package:flutter/material.dart';

class PopularPackageCard extends StatefulWidget {
  final String packageName;
  final int packageQuantity;
  final String firstTestName;
  final String secondTestName;
  final int packageActualPrice;
  const PopularPackageCard({
    super.key,
    required this.packageName,
    required this.packageQuantity,
    required this.firstTestName,
    required this.secondTestName,
    required this.packageActualPrice,
  });

  @override
  State<PopularPackageCard> createState() => _PopularPackageCardState();
}

class _PopularPackageCardState extends State<PopularPackageCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(border: Border.all()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/popularPackageLogo1.png",
                scale: 0.8,
              ),
              Container(
                alignment: Alignment.topCenter,
                height: 70,
                child: Image.asset(
                  "assets/images/popularPackageLogo2.png",
                  scale: 0.8,
                  alignment: Alignment.topCenter,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.packageName,
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.left,
            ),
          ),
          Column(
            children: [
              Text("Includes ${widget.packageQuantity} tests"),
              Text(".  ${widget.firstTestName}"),
              Text(".  ${widget.secondTestName}"),
              Text(
                "View More",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),
          Row(
            children: [
              Text("${widget.packageActualPrice}"),
              MaterialButton(
                onPressed: () {},
                child: Text("Add to card"),
              )
            ],
          )
        ],
      ),
    );
  }
}
