import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'termsofservice_model.dart';
export 'termsofservice_model.dart';

class TermsofserviceWidget extends StatefulWidget {
  const TermsofserviceWidget({super.key});

  static String routeName = 'termsofservice';
  static String routePath = '/termsofservice';

  @override
  State<TermsofserviceWidget> createState() => _TermsofserviceWidgetState();
}

class _TermsofserviceWidgetState extends State<TermsofserviceWidget> {
  late TermsofserviceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsofserviceModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'termsofservice'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 30.0,
            buttonSize: 30.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
            ),
            onPressed: () async {
              logFirebaseEvent('TERMSOFSERVICE_arrow_back_rounded_ICN_ON');
              logFirebaseEvent('IconButton_navigate_back');
              context.safePop();
            },
          ),
          title: Text(
            'CareMeez – Terms of Service',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.openSans(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 4.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Last updated: 01-05-2025\n\nWelcome to CareMeez. By accessing or using our platform, mobile app, or services, you agree to the following Terms of Service (“Terms”). Please read them carefully.\n\n1. About CareMeez\nCareMeez is an online healthcare platform that connects users with certified doctors, wellness experts, and mental health professionals for real-time consultations via video, audio, or chat. We aim to make healthcare accessible, affordable, and flexible.\n\n2. Eligibility\nTo use CareMeez, you must:\n\nBe at least 18 years old or have guardian consent if under 18\n\nProvide accurate personal and health information\n\nAgree to these Terms and our Privacy Policy\n\n3. Consultation Services\nCareMeez offers on-demand, per-minute teleconsultations with licensed professionals.\n\nThese services are not a substitute for emergency care.\n\nAll medical advice given is based on the information provided by you.\n\n4. User Responsibilities\nYou agree to:\n\nUse the platform for lawful purposes only\n\nNot impersonate others or submit false information\n\nMaintain confidentiality of your account credentials\n\nRespect doctors and other users on the platform\n\n5. Doctor & Expert Obligations\nRegistered professionals on CareMeez must:\n\nHold valid licenses and certifications\n\nProvide ethical, evidence-based care\n\nMaintain patient confidentiality\n\nComply with applicable Indian Medical Council and privacy regulations\n\n6. Payments & Refunds\nConsultation charges are based on a per-minute or fixed rate, as shown before connecting.\n\nPayments are handled securely through our payment gateway.\n\nRefunds are issued only in cases of:\n\nTechnical failure preventing consultation\n\nDoctor no-show or refusal to consult\n\nDuplicate payments\n\n7. Privacy & Data\nYour personal and medical data is stored securely and handled in accordance with our [Privacy Policy].\n\nWe comply with Indian data protection laws and Telemedicine Practice Guidelines (MoHFW 2020).\n\n8. Platform Limitations\nCareMeez does not:\n\nGuarantee medical outcomes or treatment success\n\nReplace physical diagnostics or emergency care\n\nOffer 24/7 emergency services (use 112 in case of emergencies)\n\n9. Termination of Services\nWe may suspend or terminate access if:\n\nTerms are violated\n\nFraudulent behavior is detected\n\nMisuse or abuse of doctors or services occurs\n\n10. Intellectual Property\nAll content, logos, visuals, and tools on CareMeez are our intellectual property and may not be copied, redistributed, or reproduced without permission.\n\n11. Dispute Resolution\nAny disputes arising from these Terms will be governed by the laws of India and subject to the jurisdiction of [Your Company’s Jurisdiction, e.g., Delhi or Haryana] courts.\n\n12. Modifications\nCareMeez may update these Terms from time to time. Continued use of the service after changes implies acceptance of the new terms.\n\n13. Contact Us\nFor questions or complaints, email us at:\n📧 support@caremeez.in\n📍 Visiwell Solutions Pvt. Ltd.,  491/7, Subhash Nagar, Farrukhnagar, Nr Dsd Clg, Gurgaon, Gurgaon, Sadar Bazar, Haryana, India, 122001',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          font: GoogleFonts.mukta(
                            fontWeight: FontWeight.normal,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodySmall
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodySmall.fontStyle,
                        ),
                  ),
                ),
                StreamBuilder<List<LawyersRecord>>(
                  stream: queryLawyersRecord(
                    queryBuilder: (lawyersRecord) => lawyersRecord.where(
                      'author',
                      isEqualTo: currentUserReference,
                    ),
                    singleRecord: true,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 20.0,
                          height: 20.0,
                          child: SpinKitFadingCircle(
                            color: Color(0x4D03A9F4),
                            size: 20.0,
                          ),
                        ),
                      );
                    }
                    List<LawyersRecord> containerLawyersRecordList =
                        snapshot.data!;
                    // Return an empty Container when the item does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final containerLawyersRecord =
                        containerLawyersRecordList.isNotEmpty
                            ? containerLawyersRecordList.first
                            : null;

                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        logFirebaseEvent(
                            'TERMSOFSERVICE_Container_fnyv6moj_ON_TAP');
                        logFirebaseEvent('Container_custom_action');
                        await actions.updateUserWalletFromCall(
                          15,
                          containerLawyersRecord!.reference,
                        );
                      },
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
