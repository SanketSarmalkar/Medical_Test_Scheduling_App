import 'package:health_checkup_store/models/popular_lab_test_model.dart';

class BookedAppointmentModel {
  final DateTime appointmentDate;
  final String appointmentTime;
  final List<PopularLabTestModel> tests;
  final double totalPrice;

  BookedAppointmentModel({
    required this.appointmentDate,
    required this.appointmentTime,
    required this.tests,
    required this.totalPrice,
  });
}
