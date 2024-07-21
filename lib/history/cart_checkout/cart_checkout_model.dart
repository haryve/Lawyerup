import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'cart_checkout_widget.dart' show CartCheckoutWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartCheckoutModel extends FlutterFlowModel<CartCheckoutWidget> {
  ///  Local state fields for this page.

  bool? showCart = false;

  String zipCode = '';

  AddressStruct? selectedAddress;
  void updateSelectedAddressStruct(Function(AddressStruct) updateFn) {
    updateFn(selectedAddress ??= AddressStruct());
  }

  bool showNewAddress = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  OrdersRecord? newOrder;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
