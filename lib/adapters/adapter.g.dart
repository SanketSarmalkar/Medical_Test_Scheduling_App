import 'package:health_checkup_store/adapters/booked_appointment_model_1.dart';
import 'package:hive/hive.dart';

class BookedAppointmentModelAdapter
    extends TypeAdapter<BookedAppointmentModel> {
  @override
  final int typeId = 1; // Unique ID for this TypeAdapter

  @override
  BookedAppointmentModel read(BinaryReader reader) {
    // Deserialization logic
    // Implement how to read the object from the box
    return BookedAppointmentModel.fromJson(
        reader.readMap() as Map<String, dynamic>);
  }

  @override
  void write(BinaryWriter writer, BookedAppointmentModel obj) {
    // Serialization logic
    // Implement how to write the object to the box
    writer.writeMap(obj.toJson());
  }
}
