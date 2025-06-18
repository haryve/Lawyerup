import '/backend/backend.dart';
import '/components/booking1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editdoctorrprofile_widget.dart' show EditdoctorrprofileWidget;
import 'package:flutter/material.dart';

class EditdoctorrprofileModel
    extends FlutterFlowModel<EditdoctorrprofileWidget> {
  ///  Local state fields for this component.

  bool profess = true;

  bool bank = true;

  bool basic = true;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadDataJat = false;
  FFUploadedFile uploadedLocalFile_uploadDataJat =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataJat = '';

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for Gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for state widget.
  String? stateValue;
  FormFieldController<String>? stateValueController;
  // State field(s) for ExpertType widget.
  String? expertTypeValue;
  FormFieldController<String>? expertTypeValueController;
  // State field(s) for maincategory widget.
  String? maincategoryValue;
  FormFieldController<String>? maincategoryValueController;
  // State field(s) for Familyphysician widget.
  String? familyphysicianValue;
  FormFieldController<String>? familyphysicianValueController;
  // State field(s) for Hematologist widget.
  String? hematologistValue;
  FormFieldController<String>? hematologistValueController;
  // State field(s) for Homeopathy widget.
  String? homeopathyValue;
  FormFieldController<String>? homeopathyValueController;
  // State field(s) for Ayurveda widget.
  String? ayurvedaValue;
  FormFieldController<String>? ayurvedaValueController;
  // State field(s) for Nutritionist widget.
  String? nutritionistValue;
  FormFieldController<String>? nutritionistValueController;
  // State field(s) for Pharmacy widget.
  String? pharmacyValue;
  FormFieldController<String>? pharmacyValueController;
  // State field(s) for Gynecology widget.
  String? gynecologyValue;
  FormFieldController<String>? gynecologyValueController;
  // State field(s) for Dentist widget.
  String? dentistValue;
  FormFieldController<String>? dentistValueController;
  // State field(s) for AllergyImmunology widget.
  String? allergyImmunologyValue;
  FormFieldController<String>? allergyImmunologyValueController;
  // State field(s) for Geriatrics widget.
  String? geriatricsValue;
  FormFieldController<String>? geriatricsValueController;
  // State field(s) for Oncology widget.
  String? oncologyValue;
  FormFieldController<String>? oncologyValueController;
  // State field(s) for Rheumatology widget.
  String? rheumatologyValue;
  FormFieldController<String>? rheumatologyValueController;
  // State field(s) for Nephrology widget.
  String? nephrologyValue;
  FormFieldController<String>? nephrologyValueController;
  // State field(s) for Ophthalmology widget.
  String? ophthalmologyValue;
  FormFieldController<String>? ophthalmologyValueController;
  // State field(s) for Orthopedics widget.
  String? orthopedicsValue;
  FormFieldController<String>? orthopedicsValueController;
  // State field(s) for Neurology widget.
  String? neurologyValue;
  FormFieldController<String>? neurologyValueController;
  // State field(s) for Pulmonologist widget.
  String? pulmonologistValue;
  FormFieldController<String>? pulmonologistValueController;
  // State field(s) for Gastroenterologist widget.
  String? gastroenterologistValue;
  FormFieldController<String>? gastroenterologistValueController;
  // State field(s) for Endocrinology widget.
  String? endocrinologyValue;
  FormFieldController<String>? endocrinologyValueController;
  // State field(s) for Cardiologist widget.
  String? cardiologistValue;
  FormFieldController<String>? cardiologistValueController;
  // State field(s) for Dermatologist widget.
  String? dermatologistValue;
  FormFieldController<String>? dermatologistValueController;
  // State field(s) for Pediatric widget.
  String? pediatricValue;
  FormFieldController<String>? pediatricValueController;
  // State field(s) for ENT widget.
  String? entValue;
  FormFieldController<String>? entValueController;
  // State field(s) for psychiatristcat widget.
  String? psychiatristcatValue;
  FormFieldController<String>? psychiatristcatValueController;
  // State field(s) for psychologistcat widget.
  String? psychologistcatValue;
  FormFieldController<String>? psychologistcatValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for Checkboxpsych widget.
  FormFieldController<List<String>>? checkboxpsychValueController;
  List<String>? get checkboxpsychValues => checkboxpsychValueController?.value;
  set checkboxpsychValues(List<String>? v) =>
      checkboxpsychValueController?.value = v;

  // State field(s) for checkpsychologist widget.
  FormFieldController<List<String>>? checkpsychologistValueController;
  List<String>? get checkpsychologistValues =>
      checkpsychologistValueController?.value;
  set checkpsychologistValues(List<String>? v) =>
      checkpsychologistValueController?.value = v;

  // State field(s) for OtherExpertise widget.
  FocusNode? otherExpertiseFocusNode;
  TextEditingController? otherExpertiseTextController;
  String? Function(BuildContext, String?)?
      otherExpertiseTextControllerValidator;
  // State field(s) for accname widget.
  FocusNode? accnameFocusNode;
  TextEditingController? accnameTextController;
  String? Function(BuildContext, String?)? accnameTextControllerValidator;
  // State field(s) for bankname widget.
  FocusNode? banknameFocusNode;
  TextEditingController? banknameTextController;
  String? Function(BuildContext, String?)? banknameTextControllerValidator;
  // State field(s) for accno widget.
  FocusNode? accnoFocusNode;
  TextEditingController? accnoTextController;
  String? Function(BuildContext, String?)? accnoTextControllerValidator;
  // State field(s) for ifsc widget.
  FocusNode? ifscFocusNode;
  TextEditingController? ifscTextController;
  String? Function(BuildContext, String?)? ifscTextControllerValidator;
  // State field(s) for upi widget.
  FocusNode? upiFocusNode;
  TextEditingController? upiTextController;
  String? Function(BuildContext, String?)? upiTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  BankRecord? ban;
  // State field(s) for Availaibility1 widget.
  FormFieldController<List<String>>? availaibility1ValueController;
  List<String>? get availaibility1Values =>
      availaibility1ValueController?.value;
  set availaibility1Values(List<String>? v) =>
      availaibility1ValueController?.value = v;

  // Model for booking1 component.
  late Booking1Model booking1Model;
  // State field(s) for Availaibility widget.
  FormFieldController<List<String>>? availaibilityValueController;
  List<String>? get availaibilityValues => availaibilityValueController?.value;
  set availaibilityValues(List<String>? v) =>
      availaibilityValueController?.value = v;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController14;
  String? Function(BuildContext, String?)? textController14Validator;

  @override
  void initState(BuildContext context) {
    booking1Model = createModel(context, () => Booking1Model());
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();

    textFieldFocusNode4?.dispose();
    textController5?.dispose();

    textFieldFocusNode5?.dispose();
    textController6?.dispose();

    otherExpertiseFocusNode?.dispose();
    otherExpertiseTextController?.dispose();

    accnameFocusNode?.dispose();
    accnameTextController?.dispose();

    banknameFocusNode?.dispose();
    banknameTextController?.dispose();

    accnoFocusNode?.dispose();
    accnoTextController?.dispose();

    ifscFocusNode?.dispose();
    ifscTextController?.dispose();

    upiFocusNode?.dispose();
    upiTextController?.dispose();

    booking1Model.dispose();
    textFieldFocusNode6?.dispose();
    textController13?.dispose();

    textFieldFocusNode7?.dispose();
    textController14?.dispose();
  }
}
