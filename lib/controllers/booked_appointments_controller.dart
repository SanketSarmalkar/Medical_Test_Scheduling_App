import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:health_checkup_store/adapters/booked_appointment_model_1.dart';
import 'package:hive_flutter/hive_flutter.dart';

class BookedAppointmentController extends GetxController {
  final myBox = Hive.box('bookedTests');

  void deleteTest() {
    myBox.deleteAt(1);
  }

  void addTest(BookedAppointmentModel bookedAppointmentModel) {
    if (myBox.get(1) == null) {
      myBox.put(1, [bookedAppointmentModel]);
      return;
    }
    List<BookedAppointmentModel> bookedAppointmentModelList = myBox.get(1);
    bookedAppointmentModelList.add(bookedAppointmentModel);
    myBox.put(1, bookedAppointmentModelList);
    // print(myBox.get(1));
  }
}
