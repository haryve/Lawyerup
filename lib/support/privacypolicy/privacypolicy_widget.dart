import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'privacypolicy_model.dart';
export 'privacypolicy_model.dart';

class PrivacypolicyWidget extends StatefulWidget {
  const PrivacypolicyWidget({super.key});

  static String routeName = 'Privacypolicy';
  static String routePath = '/privacypolicy';

  @override
  State<PrivacypolicyWidget> createState() => _PrivacypolicyWidgetState();
}

class _PrivacypolicyWidgetState extends State<PrivacypolicyWidget> {
  late PrivacypolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacypolicyModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Privacypolicy'});
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
            ),
            onPressed: () async {
              logFirebaseEvent('PRIVACYPOLICY_arrow_back_rounded_ICN_ON_');
              logFirebaseEvent('IconButton_navigate_back');
              context.pop();
            },
          ),
          title: Text(
            'Privacy Policy',
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
          centerTitle: true,
          elevation: 10.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Material(
                color: Colors.transparent,
                elevation: 4.0,
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 114.26,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Privacy Policy',
                          style: FlutterFlowTheme.of(context)
                              .headlineLarge
                              .override(
                                font: GoogleFonts.openSans(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primary,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .fontStyle,
                              ),
                        ),
                        Text(
                          'Caremeez: Digital Health Advice',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    font: GoogleFonts.mukta(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .fontStyle,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'At **CareMeez**, operated by **Visiwell Solutions Private Limited**, we are deeply committed to protecting your privacy and personal health information. This Privacy Policy outlines how we collect, use, store, and protect your data in accordance with the **Telemedicine Practice Guidelines 2020**, **Information Technology Act 2000**, and **HIPAA-aligned standards**.\n\n---\n\n### 1. Information We Collect\n\nWe may collect the following categories of personal and health information:\n\n* **Personal Identification Data**: Name, email, phone number, gender, age.\n* **Health Information**: Symptoms, consultations, medical records, prescriptions, health history.\n* **Technical Data**: IP address, device type, operating system, crash logs.\n* **Communication Data**: Audio, video, chat transcripts from consultations.\n\n---\n\n### 2. How We Use Your Information\n\nWe use your information to:\n\n* Facilitate secure online consultations with doctors.\n* Match users with appropriate specialists.\n* Provide mental health and wellness services.\n* Improve our services, interface, and performance.\n* Fulfill legal, regulatory, and audit requirements.\n\n---\n\n### 3. Data Protection & Security\n\nCareMeez uses stringent security protocols to ensure your data is protected:\n\n* **Encryption**: Data is encrypted both in transit and at rest.\n* **Secure Infrastructure**: We use **Google Firebase**, **Twilio**, and **Agora**, all of which follow industry security standards.\n* **Access Control**: Only authorized personnel and doctors can access sensitive data.\n* **Anonymization**: Where possible, we use de-identified or anonymized data for analysis.\n\n---\n\n### 4. Compliance\n\nCareMeez complies with:\n\n* **Telemedicine Practice Guidelines, 2020** (MoHFW, Govt. of India)\n* **Information Technology Act, 2000** and relevant data rules\n* **HIPAA-aligned data security protocols** for handling Protected Health Information (PHI)\n* **NDHM guidelines** where applicable (India’s National Digital Health Mission)\n\n---\n\n### 5. Data Sharing\n\nWe do **not** sell or use your data for marketing. We may share your data with:\n\n* Licensed doctors on the platform (as required for treatment).\n* Authorized third-party processors (e.g., Firebase, Twilio, Agora) under strict data protection agreements.\n* Regulatory bodies, only when required by applicable law.\n\n---\n\n### 6. Your Rights\n\nAs a user, you have the right to:\n\n* Access your data.\n* Request correction or deletion.\n* Revoke consent at any time (note: some services may become unavailable).\n* Know what data we store and how we process it.\n\n---\n\n### 7. Retention Policy\n\nWe retain your data only for as long as necessary to:\n\n* Fulfill the purpose for which it was collected.\n* Comply with applicable legal, tax, and regulatory requirements.\n\n---\n\n### 8. Changes to This Policy\n\nWe may update this Privacy Policy from time to time. All changes will be posted within the app and on our website.\n\n---\n\n### 9. Contact Us\n\n**Visiwell Solutions Private Limited**\n491/7, Subhash Nagar, Farrukhnagar, Gurgaon, Haryana, India – 122001\n📧 Email: [caremeez@Visiwellsolutions.com]\n🌐 Website: [www.caremeez.com](http://www.caremeez.com)\n\nIf you have questions or concerns about your privacy or data usage, please contact us using the above details.\n\n---\n\n**Your privacy is our priority.**\n',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.mukta(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
