import '/components/callbuttonnew/callbuttonnew_widget.dart';
import '/components/drawer/drawer_widget.dart';
import '/components/newchatbutton/newchatbutton_widget.dart';
import '/components/userimage_widget.dart';
import '/components/videocallbutton/videocallbutton_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'doctor_profiledemo_widget.dart' show DoctorProfiledemoWidget;
import 'package:flutter/material.dart';

class DoctorProfiledemoModel extends FlutterFlowModel<DoctorProfiledemoWidget> {
  ///  Local state fields for this page.

  List<LatLng> docuser = [];
  void addToDocuser(LatLng item) => docuser.add(item);
  void removeFromDocuser(LatLng item) => docuser.remove(item);
  void removeAtIndexFromDocuser(int index) => docuser.removeAt(index);
  void insertAtIndexInDocuser(int index, LatLng item) =>
      docuser.insert(index, item);
  void updateDocuserAtIndex(int index, Function(LatLng) updateFn) =>
      docuser[index] = updateFn(docuser[index]);

  ///  State fields for stateful widgets in this page.

  // Model for USERIMAGE component.
  late UserimageModel userimageModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Model for newchatbutton component.
  late NewchatbuttonModel newchatbuttonModel;
  // Model for videocallbutton component.
  late VideocallbuttonModel videocallbuttonModel;
  // Model for callbuttonnew component.
  late CallbuttonnewModel callbuttonnewModel;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Model for drawer component.
  late DrawerModel drawerModel;

  @override
  void initState(BuildContext context) {
    userimageModel = createModel(context, () => UserimageModel());
    newchatbuttonModel = createModel(context, () => NewchatbuttonModel());
    videocallbuttonModel = createModel(context, () => VideocallbuttonModel());
    callbuttonnewModel = createModel(context, () => CallbuttonnewModel());
    drawerModel = createModel(context, () => DrawerModel());
  }

  @override
  void dispose() {
    userimageModel.dispose();
    newchatbuttonModel.dispose();
    videocallbuttonModel.dispose();
    callbuttonnewModel.dispose();
    drawerModel.dispose();
  }
}
