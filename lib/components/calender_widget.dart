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
      body: Column(children: [
        Text("Select Date",
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.titleSmall!.fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
        Expanded(
          child: CalendarDatePicker(
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime(2025),
              onDateChanged: (value) {
                bookingAppointmentController.setSelectedDate(value.toString());
              }),
        ),
        Text("Select Time",
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.titleSmall!.fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
        SizedBox(
          height: 200,
          child: ListView.builder(
              itemCount: schedulingTimeData.TimeSlot.length,
              itemBuilder: (context, index) {
                return Row(
                  children: List.generate(3, (colIndex) {
                    final slotIndex = index * 3 + colIndex;
                    if (slotIndex < schedulingTimeData.TimeSlot.length) {
                      return Expanded(
                        child: Obx(
                          () => MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                color: Color(0xff10217D),
                              ),
                            ),
                            color: bookingAppointmentController
                                        .selectedTime.value ==
                                    schedulingTimeData.TimeSlot[slotIndex]
                                ? const Color(0xff10217D)
                                : Colors.white,
                            child: Text(schedulingTimeData.TimeSlot[slotIndex]),
                            onPressed: () {
                              bookingAppointmentController.setSelectedTime(
                                  schedulingTimeData.TimeSlot[slotIndex]);
                            },
                          ),
                        ),
                      );
                    } else {
                      // Placeholder for empty slots if the total slots are not a multiple of 3
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
        MaterialButton(
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
                fontSize: Theme.of(context).textTheme.titleSmall!.fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
        ),
      ]),
    );
  }
}
