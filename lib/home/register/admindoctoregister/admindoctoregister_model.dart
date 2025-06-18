import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'admindoctoregister_widget.dart' show AdmindoctoregisterWidget;
import 'package:flutter/material.dart';

class AdmindoctoregisterModel
    extends FlutterFlowModel<AdmindoctoregisterWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataG7s5 = false;
  FFUploadedFile uploadedLocalFile_uploadDataG7s5 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataG7s5 = '';

  bool isDataUploading_uploadDataG7s = false;
  FFUploadedFile uploadedLocalFile_uploadDataG7s =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataG7s = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode1;
  TextEditingController? yourNameTextController1;
  String? Function(BuildContext, String?)? yourNameTextController1Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode2;
  TextEditingController? yourNameTextController2;
  String? Function(BuildContext, String?)? yourNameTextController2Validator;
  // State field(s) for state widget.
  String? stateValue;
  FormFieldController<String>? stateValueController;
  // State field(s) for Profession widget.
  String? professionValue;
  FormFieldController<String>? professionValueController;
  // State field(s) for Gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;
  // State field(s) for type widget.
  String? typeValue;
  FormFieldController<String>? typeValueController;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for psychiaexpertisedd widget.
  String? psychiaexpertiseddValue;
  FormFieldController<String>? psychiaexpertiseddValueController;
  // State field(s) for psychoexpertisedd widget.
  String? psychoexpertiseddValue;
  FormFieldController<String>? psychoexpertiseddValueController;
  // State field(s) for Education widget.
  FocusNode? educationFocusNode;
  TextEditingController? educationTextController;
  String? Function(BuildContext, String?)? educationTextControllerValidator;
  // State field(s) for GraduationYear widget.
  FocusNode? graduationYearFocusNode;
  TextEditingController? graduationYearTextController;
  String? Function(BuildContext, String?)?
      graduationYearTextControllerValidator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode3;
  TextEditingController? yourNameTextController3;
  String? Function(BuildContext, String?)? yourNameTextController3Validator;
  // State field(s) for yearsofpractice widget.
  FocusNode? yearsofpracticeFocusNode;
  TextEditingController? yearsofpracticeTextController;
  String? Function(BuildContext, String?)?
      yearsofpracticeTextControllerValidator;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioTextController;
  String? Function(BuildContext, String?)? myBioTextControllerValidator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode4;
  TextEditingController? yourNameTextController4;
  String? Function(BuildContext, String?)? yourNameTextController4Validator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController1;
  List<String>? get checkboxGroupValues1 =>
      checkboxGroupValueController1?.value;
  set checkboxGroupValues1(List<String>? v) =>
      checkboxGroupValueController1?.value = v;

  // State field(s) for OtherExpertise widget.
  FocusNode? otherExpertiseFocusNode;
  TextEditingController? otherExpertiseTextController;
  String? Function(BuildContext, String?)?
      otherExpertiseTextControllerValidator;
  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController2;
  List<String>? get checkboxGroupValues2 =>
      checkboxGroupValueController2?.value;
  set checkboxGroupValues2(List<String>? v) =>
      checkboxGroupValueController2?.value = v;

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  LawyersRecord? refer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode1?.dispose();
    yourNameTextController1?.dispose();

    yourNameFocusNode2?.dispose();
    yourNameTextController2?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    educationFocusNode?.dispose();
    educationTextController?.dispose();

    graduationYearFocusNode?.dispose();
    graduationYearTextController?.dispose();

    yourNameFocusNode3?.dispose();
    yourNameTextController3?.dispose();

    yearsofpracticeFocusNode?.dispose();
    yearsofpracticeTextController?.dispose();

    myBioFocusNode?.dispose();
    myBioTextController?.dispose();

    yourNameFocusNode4?.dispose();
    yourNameTextController4?.dispose();

    otherExpertiseFocusNode?.dispose();
    otherExpertiseTextController?.dispose();
  }
}
