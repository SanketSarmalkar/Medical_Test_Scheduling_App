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
  final TextStyle _textStyleBulletPoints = const TextStyle(
    color: Color(0xff6C87AE),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.width * 0.02,
        bottom: MediaQuery.of(context).size.width * 0.02,
        left: MediaQuery.of(context).size.width * 0.1,
        right: MediaQuery.of(context).size.width * 0.1,
      ),
      padding: EdgeInsets.all(
        MediaQuery.of(context).size.width * 0.05,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xff10217D).withOpacity(0.3),
        ),
      ),
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
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.02,
              bottom: MediaQuery.of(context).size.width * 0.025,
            ),
            child: Text(
              widget.packageName,
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.left,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Includes ${widget.packageQuantity} tests",
                style: _textStyleBulletPoints,
              ),
              Text(
                "\u2022 ${widget.firstTestName}",
                style: _textStyleBulletPoints,
              ),
              Text(
                "\u2022 ${widget.secondTestName}",
                style: _textStyleBulletPoints,
              ),
              const Text(
                "View More",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Color(0xff6C87AE),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\u{20B9} ${widget.packageActualPrice}/-",
                  style: TextStyle(
                    fontSize:
                        Theme.of(context).textTheme.headlineSmall!.fontSize,
                    color: const Color(0xff1BA9B5),
                    fontWeight: FontWeight.bold,
                  )),
              MaterialButton(
                onPressed: () {},
                minWidth: 125,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  side: const BorderSide(color: Color(0xff10217D)),
                ),
                child: const Text("Add to card"),
              )
            ],
          )
        ],
      ),
    );
  }
}
