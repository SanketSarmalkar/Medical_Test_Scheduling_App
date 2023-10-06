import 'package:get/get.dart';
import 'package:health_checkup_store/adapters/booked_appointment_model_1.dart';
import 'package:health_checkup_store/models/popular_lab_test_model.dart';

class BookingAppointmentController extends GetxController {
  RxString selectedDate = "".obs;
  RxString selectedTime = "".obs;
  // final _myCartList = <PopularLabTestModel>[].obs;
  // final _totalPrice = 0.0.obs;

  // List<PopularLabTestModel> get myCartList => _myCartList.toList();
  // double get totalPrice => _totalPrice.value;

  //BookedAppointmentController bookedAppointmentController = Get.put(BookedAppointmentController());

  void setSelectedDate(String date) {
    selectedDate.value = date;
  }

  void setSelectedTime(String time) {
    selectedTime.value = time;
  }

  void bookAppointment(
    List<PopularLabTestModel> myCartList,
    double totalPrice,
  ) {
    // ignore: unused_local_variable
    BookedAppointmentModel bookedAppointmentModel = BookedAppointmentModel(
      appointmentDate: DateTime.parse(selectedDate.value),
      appointmentTime: selectedTime.value,
      tests: myCartList,
      totalPrice: totalPrice,
    );
    //bookedAppointmentController.addTest(bookedAppointmentModel);
    //print(bookedAppointmentModel.appointmentDate);
  }

  void clearCartDetails() {
    // _myCartList.clear();
    // _totalPrice.value = 0.0;
    selectedDate.value = "";
    selectedTime.value = "";
  }

  String getSelectedDate() {
    if (selectedDate.value == "") {
      return "Select ";
    }
    String date =
        "${DateTime.parse(selectedDate.value).day}-${DateTime.parse(selectedDate.value).month}-${DateTime.parse(selectedDate.value).year}";
    return date;
  }

  String getSelectedTime() {
    if (selectedTime.value == "") {
      return "Date and Time";
    }
    String time = selectedTime.value;
    return time;
  }
}
