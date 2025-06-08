import '/auth/firebase_auth/auth_util.dart';
import '/components/chatinvitatiog_widget.dart';
import '/components/popupfund/popupfund_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'newchatbutton_model.dart';
export 'newchatbutton_model.dart';

class NewchatbuttonWidget extends StatefulWidget {
  const NewchatbuttonWidget({
    super.key,
    required this.lawref,
  });

  final DocumentReference? lawref;

  @override
  State<NewchatbuttonWidget> createState() => _NewchatbuttonWidgetState();
}

class _NewchatbuttonWidgetState extends State<NewchatbuttonWidget> {
  late NewchatbuttonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewchatbuttonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Shortcuts(
      shortcuts: {},
      child: Actions(
        actions: {
          VoidCallbackIntent: CallbackAction<VoidCallbackIntent>(
            onInvoke: (intent) => intent.callback(),
          ),
        },
        child: Focus(
          autofocus: isShortcutsSupported,
          focusNode: _model.newchatbuttonShortcutsFocusNode,
          child: GestureDetector(
              onTap: () =>
                  _model.newchatbuttonShortcutsFocusNode.canRequestFocus
                      ? FocusScope.of(context)
                          .requestFocus(_model.newchatbuttonShortcutsFocusNode)
                      : FocusScope.of(context).unfocus(),
              child: FlutterFlowIconButton(
                borderRadius: 8.0,
                buttonSize: 36.0,
                fillColor: FlutterFlowTheme.of(context).info,
                icon: Icon(
                  Icons.chat,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  size: 16.0,
                ),
                showLoadingIndicator: true,
                onPressed: () async {
                  logFirebaseEvent('NEWCHATBUTTON_COMP_chat_ICN_ON_TAP');
                  if (valueOrDefault(currentUserDocument?.waller, 0) >= 100) {
                    logFirebaseEvent('IconButton_bottom_sheet');
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: ChatinvitatiogWidget(
                            lawtereef: widget.lawref!,
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  } else {
                    logFirebaseEvent('IconButton_bottom_sheet');
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: PopupfundWidget(),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  }
                },
              )),
        ),
      ),
    );
  }
}
