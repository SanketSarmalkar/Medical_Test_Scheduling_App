import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health_checkup_store/controllers/booking_appointment_controller.dart';
import 'package:health_checkup_store/data/scheduling_time_data.dart';

class CalenderWidget extends StatefulWidget {
  const CalenderWidget({super.key});

  @override
  State<CalenderWidget> createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
  BookingAppointmentController bookingAppointmentController =
      Get.put(BookingAppointmentController());
  SchedulingTimeData schedulingTimeData = SchedulingTimeData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Book Appointment",
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.titleLarge!.fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        shadowColor: Colors.transparent,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(
                Theme.of(context).textTheme.titleSmall!.fontSize! * 0.5,
              ),
              child: Text("Select Date",
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.titleSmall!.fontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            ),
            CalendarDatePicker(
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2025),
              onDateChanged: (value) {
                bookingAppointmentController.setSelectedDate(value.toString());
              },
            ),
            Padding(
              padding: EdgeInsets.all(
                Theme.of(context).textTheme.titleSmall!.fontSize! * 0.5,
              ),
              child: Text("Select Time",
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.titleSmall!.fontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            ),
            SizedBox(
              height: 260,
              child: ListView.builder(
                  itemCount: schedulingTimeData.timeSlot.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: List.generate(3, (colIndex) {
                        final slotIndex = index * 3 + colIndex;
                        if (slotIndex < schedulingTimeData.timeSlot.length) {
                          return Expanded(
                            child: Obx(
                              () => Padding(
                                padding: EdgeInsets.all(
                                  Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .fontSize! *
                                      0.5,
                                ),
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    side: const BorderSide(
                                      color: Color(0xff10217D),
                                      width: 3,
                                    ),
                                  ),
                                  color: bookingAppointmentController
                                              .selectedTime.value ==
                                          schedulingTimeData.timeSlot[slotIndex]
                                      ? const Color(0xff10217D)
                                      : Colors.white,
                                  child: Text(
                                      schedulingTimeData.timeSlot[slotIndex]),
                                  onPressed: () {
                                    bookingAppointmentController
                                        .setSelectedTime(schedulingTimeData
                                            .timeSlot[slotIndex]);
                                  },
                                ),
                              ),
                            ),
                          );
                        } else {
                          return Expanded(child: Container());
                        }
                      }),
                    );
                  }),
            ),
            // Expanded(
            //   child: TimePickerDialog(
            //       initialTime: TimeOfDay.now(),
            //       onEntryModeChanged: (value) {
            //         print(value);
            //         bookingAppointmentController.setSelectedTime(value.toString());
            //       }),
            // ),
            Center(
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minWidth: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.075,
                color: Colors.grey.withOpacity(0.1),
                child: Text("Next",
                    style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.titleMedium!.fontSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
            ),
          ]),
    );
  }
}
