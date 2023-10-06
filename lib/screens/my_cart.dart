import 'package:flutter/material.dart';
import 'package:health_checkup_store/components/calender_widget.dart';
import 'package:health_checkup_store/components/cart_orders.dart';

class MyCartPage extends StatefulWidget {
  const MyCartPage({super.key});

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  @override
  Widget build(BuildContext context) {
    TextStyle _textStyle1 = TextStyle(
      fontSize: Theme.of(context).textTheme.titleSmall!.fontSize,
      fontWeight: FontWeight.bold,
      color: Colors.black.withOpacity(0.5),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text("My Cart", style: Theme.of(context).textTheme.titleLarge),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          shadowColor: Colors.transparent,
        ),
        body: Padding(
          padding: EdgeInsets.only(
            left: Theme.of(context).textTheme.bodyLarge!.fontSize! * 0.5,
            right: Theme.of(context).textTheme.bodyLarge!.fontSize! * 0.5,
          ),
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Order Review",
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.titleLarge!.fontSize,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff10217D),
                ),
              ),
              const CartOrders(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CalenderWidget(),
                      ));
                },
                child: Container(
                  margin: EdgeInsets.all(
                      Theme.of(context).textTheme.bodyLarge!.fontSize! * 0.5),
                  padding: EdgeInsets.only(
                    top: Theme.of(context).textTheme.bodyLarge!.fontSize! * 1.6,
                    bottom:
                        Theme.of(context).textTheme.bodyLarge!.fontSize! * 1.6,
                    left:
                        Theme.of(context).textTheme.bodyLarge!.fontSize! * 0.1,
                    right:
                        Theme.of(context).textTheme.bodyLarge!.fontSize! * 0.1,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xff10217D).withOpacity(0.1),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        size:
                            Theme.of(context).textTheme.titleSmall!.fontSize! *
                                2.5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        padding: EdgeInsets.all(
                            Theme.of(context).textTheme.bodyLarge!.fontSize! *
                                0.5),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xff10217D).withOpacity(0.2),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text("Select Date",
                            style: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .fontSize,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff10217D).withOpacity(0.1),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.all(
                    Theme.of(context).textTheme.bodyLarge!.fontSize! * 0.1),
                padding: EdgeInsets.all(
                    Theme.of(context).textTheme.bodyLarge!.fontSize! * 1),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .fontSize! *
                                0.5,
                            bottom: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .fontSize! *
                                0.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "M.R.P. Total",
                              style: _textStyle1,
                            ),
                            Text("₹ ${0.00}", style: _textStyle1),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .fontSize! *
                                0.5,
                            bottom: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .fontSize! *
                                0.5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Discount", style: _textStyle1),
                              Text("₹ ${0.00}", style: _textStyle1),
                            ]),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .fontSize! *
                                1,
                            bottom: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .fontSize! *
                                2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Amount to be Paid",
                                style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .fontSize,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff10217D),
                                )),
                            Text("₹ ${0.00}/-",
                                style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .fontSize,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xff10217D),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Savings",
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .fontSize,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "₹ ${0.00}/-",
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .fontSize,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff10217D),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: Theme.of(context).textTheme.bodyLarge!.fontSize! * 0.5,
                  bottom:
                      Theme.of(context).textTheme.bodyLarge!.fontSize! * 0.5,
                  left: Theme.of(context).textTheme.bodyLarge!.fontSize! * 0.1,
                  right: Theme.of(context).textTheme.bodyLarge!.fontSize! * 0.1,
                ),
                padding: EdgeInsets.all(
                    Theme.of(context).textTheme.bodyLarge!.fontSize! * 0.5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xff10217D).withOpacity(0.1),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Radio(value: 2, groupValue: 1, onChanged: (value) {}),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Hard Copy of Reports",
                                  style: TextStyle(
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .fontSize,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  )),
                              Text(
                                  "Reports will be delivered within 3-4 working days. Hard copy charges are non-refundable once the reports have been dispatched. ₹150 per person",
                                  style: _textStyle1),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minWidth: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.075,
                color: const Color(0xff10217D),
                child: Text("Schedule Appointment",
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.titleSmall!.fontSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        ));
  }
}