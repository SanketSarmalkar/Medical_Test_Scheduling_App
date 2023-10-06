import 'package:hive/hive.dart';
import 'package:health_checkup_store/models/popular_lab_test_model.dart';

@HiveType(typeId: 0) // Unique ID for this HiveType
class BookedAppointmentModel {
  @HiveField(0)
  final DateTime appointmentDate;

  @HiveField(1)
  final String appointmentTime;

  @HiveField(2)
  final List<PopularLabTestModel> tests;

  @HiveField(3)
  final double totalPrice;

  BookedAppointmentModel({
    required this.appointmentDate,
    required this.appointmentTime,
    required this.tests,
    required this.totalPrice,
  });

  Map<String, dynamic> toJson() {
    return {
      'appointmentDate': appointmentDate.toIso8601String(),
      'appointmentTime': appointmentTime,
      'tests': tests.map((test) => test.toJson()).toList(),
      'totalPrice': totalPrice,
    };
  }

  factory BookedAppointmentModel.fromJson(Map<String, dynamic> json) {
    return BookedAppointmentModel(
      appointmentDate: DateTime.parse(json['appointmentDate']),
      appointmentTime: json['appointmentTime'],
      tests: (json['tests'] as List)
          .map((testJson) => PopularLabTestModel.fromJson(testJson))
          .toList(),
      totalPrice: json['totalPrice'],
    );
  }
}
