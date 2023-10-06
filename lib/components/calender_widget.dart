import 'package:flutter/material.dart';

class CalenderWidget extends StatefulWidget {
  const CalenderWidget({super.key});

  @override
  State<CalenderWidget> createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
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
              onDateChanged: (DateTime) {}),
        ),
        Text("Select Time",
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.titleSmall!.fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
        Expanded(
          child: TimePickerDialog(
              initialTime: TimeOfDay.now(), onEntryModeChanged: (TimeOfDay) {}),
        ),
        MaterialButton(
          onPressed: () {},
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
