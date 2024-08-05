import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_checkout_widget.dart' show CartCheckoutWidget;
import 'package:flutter/material.dart';

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
