import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'termsofservice_model.dart';
export 'termsofservice_model.dart';

class TermsofserviceWidget extends StatefulWidget {
  const TermsofserviceWidget({super.key});

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

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 30.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Terms of Service',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).primaryText,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 16.0),
                  child: Text(
                    'Terms of Service',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('profilesettings');
                    },
                    child: Text(
                      '\n**Terms of Service**\n\n**Welcome to Constitution Simplified!**\n\nConstitution Simplified is a mobile application (the \"App\") that provides users with a simplified and accessible understanding of the United States Constitution. The App is owned and operated by [Company Name] (\"Company\").\n\nBy accessing or using the App, you agree to be bound by these Terms of Service (\"Terms\"). If you do not agree to these Terms, you may not use the App.\n\n**1. Account**\n\nTo access certain features of the App, you may be required to create an account. When you create an account, you agree to provide accurate and complete information about yourself. You are responsible for maintaining the confidentiality of your account login information and for all activities that occur under your account. You agree to notify Company immediately of any unauthorized use of your account.\n\n**2. User Conduct**\n\nYou agree to use the App in accordance with all applicable laws and regulations. You agree not to use the App to:\n\n* Transmit or post any content that is unlawful, harmful, threatening, abusive, harassing, tortious, defamatory, vulgar, obscene, libelous, invasive of another\'s privacy, hateful, or racially, ethnically, or otherwise objectionable.\n* Harm or threaten to harm minors in any way.\n* Impersonate any person or entity, or falsely state or otherwise misrepresent your affiliation with a person or entity.\n* Forge headers or otherwise manipulate identifiers in order to disguise the origin of any content transmitted through the App.\n* Interfere with or disrupt the App or servers or networks connected to the App, or disobey any requirements, procedures, policies, or regulations of networks connected to the App.\n* Violate any intellectual property or other proprietary rights of any third party.\n* Transmit or post any material that contains software viruses or any other computer code, files, or programs that are designed or intended to disrupt, damage, or limit the functionality of any software or hardware or telecommunications equipment.\n\nCompany reserves the right, in its sole discretion, to terminate your account or restrict your access to the App for any reason, including, but not limited to, violation of these Terms.\n\n**3. Content**\n\nThe App may contain content that is not created by Company. Company is not responsible for the accuracy, completeness, or timeliness of any such content. You agree that your use of any such content is solely at your own risk.\n\n**4. Intellectual Property**\n\nCompany owns all right, title, and interest in and to the App, including, but not limited to, all copyrights, trademarks, and trade secrets. You may not copy, modify, distribute, sell, or create derivative works of the App without the prior written consent of Company.\n\n**5. Disclaimer of Warranties**\n\nTHE APP IS PROVIDED \"AS IS\" AND \"AS AVAILABLE\". COMPANY MAKES NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT. COMPANY DOES NOT WARRANT THAT THE APP WILL BE UNINTERRUPTED OR ERROR-FREE.\n\n**6. Limitation of Liability**\n\nCOMPANY SHALL NOT BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, CONSEQUENTIAL, OR EXEMPLARY DAMAGES ARISING OUT OF OR IN CONNECTION WITH YOUR USE OF THE APP, EVEN IF COMPANY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.\n\n**7. Indemnification**\n\nYou agree to indemnify and hold harmless Company, its affiliates, and its officers, directors, employees, agents, and representatives from and against any and all claims, losses, damages, liabilities, costs, and expenses (including reasonable attorneys\' fees) arising out of or in connection with your use of the App or your violation of these Terms.\n\n**8. General**\n\nThese Terms constitute the entire agreement between you and Company and supersede all prior or contemporaneous communications, representations, or agreements, whether oral or written. These Terms may be amended by Company at any time by posting the amended Terms on the App. Your continued use of the App after the posting of amended Terms will be deemed your acceptance of the amended Terms. You agree that Company may send you notices regarding the App or these Terms by email or by posting notices on the App. These Terms will be governed by and construed in accordance with the laws of the State of [State]. You agree to submit to the exclusive jurisdiction of the courts of the State of [State] for any dispute arising out of or in connection with these Terms.',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Playfair Display',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
