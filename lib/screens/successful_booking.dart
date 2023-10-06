import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_checkup_store/controllers/booking_appointment_controller.dart';
import 'package:health_checkup_store/controllers/my_cart_controller.dart';
//import 'package:hive_flutter/hive_flutter.dart';

class SuccessfulBooking extends StatelessWidget {
  final String date;
  final String time;
  const SuccessfulBooking({super.key, required this.date, required this.time});

  @override
  Widget build(BuildContext context) {
    BookingAppointmentController bookedAppointmentController =
        Get.put(BookingAppointmentController());
    MyCartController myCartController = Get.put(MyCartController());
    //var mybox = Hive.box('bookedTests');
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Success',
            style: TextStyle(
              color: Colors.black,
              fontSize: Theme.of(context).textTheme.titleLarge!.fontSize,
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(
              left: Theme.of(context).textTheme.titleLarge!.fontSize! * 0.5,
              right: Theme.of(context).textTheme.titleLarge!.fontSize! * 0.5,
              bottom: Theme.of(context).textTheme.titleLarge!.fontSize! * 0.5,
              top: MediaQuery.of(context).size.height * 0.1,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(
                    Theme.of(context).textTheme.titleLarge!.fontSize! * 1,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        Theme.of(context).textTheme.titleLarge!.fontSize! * 0.5,
                      ),
                    ),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/successLogo.png",
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Lab tests have been \n scheduled successfully, You \n will receive a mail of the same.',
                        style: Theme.of(context).textTheme.titleMedium,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Text("$date | $time"),
                      //const SizedBox(height: 20),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Get.snackbar("Thanks For Purchasing",
                        "Your order(s) for ${myCartController.myCartList.map((i) => i.testName).toList().join(', ')} has been placed successfully",
                        snackPosition: SnackPosition.BOTTOM,
                        duration: const Duration(seconds: 5),
                        colorText: Colors.green);
                    bookedAppointmentController.clearCartDetails();
                    myCartController.clearCartDetails();
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20,
                    ),
                    backgroundColor: const Color(0xff10217D),
                    textStyle: Theme.of(context).textTheme.bodyLarge,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Back to Home'),
                ),
                // Text(
                //   mybox.get(1).toString(),
                // ),
              ],
            ),
          ),
        ));
  }
}
