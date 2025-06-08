import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'booking1_widget.dart' show Booking1Widget;
import 'package:flutter/material.dart';

class Booking1Model extends FlutterFlowModel<Booking1Widget> {
  ///  Local state fields for this component.

  DateTime? startdate;

  DateTime? time;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue;
  FormFieldController<List<String>>? dropDownValueController;
  // State field(s) for morning widget.
  FormFieldController<List<String>>? morningValueController;
  List<String>? get morningValues => morningValueController?.value;
  set morningValues(List<String>? val) => morningValueController?.value = val;
  // State field(s) for Afternoon widget.
  FormFieldController<List<String>>? afternoonValueController;
  List<String>? get afternoonValues => afternoonValueController?.value;
  set afternoonValues(List<String>? val) =>
      afternoonValueController?.value = val;
  // State field(s) for Evening widget.
  FormFieldController<List<String>>? eveningValueController;
  List<String>? get eveningValues => eveningValueController?.value;
  set eveningValues(List<String>? val) => eveningValueController?.value = val;
  // State field(s) for Night widget.
  FormFieldController<List<String>>? nightValueController;
  List<String>? get nightValues => nightValueController?.value;
  set nightValues(List<String>? val) => nightValueController?.value = val;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {}
}
