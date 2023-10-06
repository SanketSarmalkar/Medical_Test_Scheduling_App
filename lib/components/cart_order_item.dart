import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_checkup_store/controllers/my_cart_controller.dart';
import 'package:health_checkup_store/models/popular_lab_test_model.dart';

class CartOrderItem extends StatefulWidget {
  final PopularLabTestModel test;
  const CartOrderItem({super.key, required this.test});

  @override
  State<CartOrderItem> createState() => _CartOrderItemState();
}

class _CartOrderItemState extends State<CartOrderItem> {
  MyCartController myCartController = Get.put(MyCartController());

  @override
  Widget build(BuildContext context) {
    return Column(
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
          child: Text("Pathology Tests",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.titleSmall!.fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
        ),
        Container(
          margin: EdgeInsets.only(
            bottom: Theme.of(context).textTheme.titleSmall!.fontSize! / 2,
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
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
            border: Border.all(
              color: const Color(0xff10217D).withOpacity(0.1),
            ),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              bottom: Theme.of(context).textTheme.titleSmall!.fontSize! * 0.25,
              top: Theme.of(context).textTheme.titleSmall!.fontSize! * 0.25,
              left: Theme.of(context).textTheme.titleSmall!.fontSize! * 2,
              right: Theme.of(context).textTheme.titleSmall!.fontSize! * 2,
            ),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.test.testName,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.titleMedium!.fontSize,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                  Text("₹ ${widget.test.testDiscountedPrice}/-",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.titleMedium!.fontSize,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff1BA9B5),
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("${widget.test.testActualPrice}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.titleSmall!.fontSize,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.3),
                        decoration: TextDecoration.lineThrough,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                        side: const BorderSide(
                          color: Color(0xff10217D),
                          width: 2,
                        ),
                      ),
                      onPressed: () {
                        myCartController.removeFromCart(widget.test);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.delete,
                            color: const Color(0xff10217D),
                            size: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .fontSize! *
                                1.5,
                          ),
                          Text(
                            "Remove",
                            style: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .fontSize,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff10217D),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                        side: const BorderSide(
                          color: Color(0xff10217D),
                          width: 2,
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.upload_file,
                            color: const Color(0xff10217D),
                            size: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .fontSize! *
                                1.5,
                          ),
                          Text(
                            "Upload prescription (optional)",
                            style: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .fontSize,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff10217D),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ]),
          ),
        )
      ],
    );
  }
}
