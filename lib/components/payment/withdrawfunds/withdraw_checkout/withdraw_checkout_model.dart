import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'withdraw_checkout_widget.dart' show WithdrawCheckoutWidget;
import 'package:flutter/material.dart';

class WithdrawCheckoutModel extends FlutterFlowModel<WithdrawCheckoutWidget> {
  ///  Local state fields for this page.

  bool? showCart = false;

  String zipCode = '';

  AddressStruct? selectedAddress;
  void updateSelectedAddressStruct(Function(AddressStruct) updateFn) {
    updateFn(selectedAddress ??= AddressStruct());
  }

  bool showNewAddress = false;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
