import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaymentDetailsWidget extends StatefulWidget {
  const PaymentDetailsWidget({Key key}) : super(key: key);

  @override
  _PaymentDetailsWidgetState createState() => _PaymentDetailsWidgetState();
}

class _PaymentDetailsWidgetState extends State<PaymentDetailsWidget> {
  TextEditingController textController;
  bool checkboxListTileValue4;
  bool checkboxListTileValue1;
  bool checkboxListTileValue2;
  bool checkboxListTileValue3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.primaryColor,
        automaticallyImplyLeading: true,
        title: Text(
          'Payment Details',
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'EB_Garamond',
            color: Colors.white,
            fontSize: 25,
            useGoogleFonts: false,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Payment Details',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'EB_Garamond',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      useGoogleFonts: false,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        width: 100,
                        height: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 10, 20, 0),
                                  child: Text(
                                    'Select Payment Method',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'EB_Garamond',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 10, 0),
                                  child: Icon(
                                    Icons.add,
                                    color: FlutterFlowTheme.primaryColor,
                                    size: 24,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                        ),
                                      ),
                                      child: CheckboxListTile(
                                        value: checkboxListTileValue1 ??= true,
                                        onChanged: (newValue) => setState(() =>
                                            checkboxListTileValue1 = newValue),
                                        title: Text(
                                          'Credit or Debit Card',
                                          style:
                                              FlutterFlowTheme.title3.override(
                                            fontFamily: 'EB_Garamond',
                                            useGoogleFonts: false,
                                          ),
                                        ),
                                        subtitle: Text(
                                          'Pay with your Card',
                                          style: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'EB_Garamond',
                                            useGoogleFonts: false,
                                          ),
                                        ),
                                        tileColor: Color(0xFFF5F5F5),
                                        activeColor:
                                            FlutterFlowTheme.primaryColor,
                                        dense: true,
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                        ),
                                      ),
                                      child: CheckboxListTile(
                                        value: checkboxListTileValue2 ??= true,
                                        onChanged: (newValue) => setState(() =>
                                            checkboxListTileValue2 = newValue),
                                        title: Text(
                                          'PayPal',
                                          style:
                                              FlutterFlowTheme.title3.override(
                                            fontFamily: 'EB_Garamond',
                                            useGoogleFonts: false,
                                          ),
                                        ),
                                        subtitle: Text(
                                          'Pay with Paypal',
                                          style: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'EB_Garamond',
                                            useGoogleFonts: false,
                                          ),
                                        ),
                                        tileColor: Color(0xFFF5F5F5),
                                        activeColor:
                                            FlutterFlowTheme.primaryColor,
                                        dense: true,
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                        ),
                                      ),
                                      child: CheckboxListTile(
                                        value: checkboxListTileValue3 ??= true,
                                        onChanged: (newValue) => setState(() =>
                                            checkboxListTileValue3 = newValue),
                                        title: Text(
                                          'Pay on delivery',
                                          style:
                                              FlutterFlowTheme.title3.override(
                                            fontFamily: 'EB_Garamond',
                                            useGoogleFonts: false,
                                          ),
                                        ),
                                        subtitle: Text(
                                          'Pay when you receive your meal',
                                          style: FlutterFlowTheme.subtitle2
                                              .override(
                                            fontFamily: 'EB_Garamond',
                                            useGoogleFonts: false,
                                          ),
                                        ),
                                        tileColor: Color(0xFFF5F5F5),
                                        activeColor:
                                            FlutterFlowTheme.primaryColor,
                                        dense: true,
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Enter Coupon',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'EB_Garamond',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      useGoogleFonts: false,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Material(
                      color: Colors.transparent,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Container(
                        width: 100,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Do you have a coupon code?',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                              child: TextFormField(
                                controller: textController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Enter your Coupon...',
                                  labelStyle:
                                      FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'EB_Garamond',
                                    color: Colors.white,
                                    fontSize: 18,
                                    useGoogleFonts: false,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF080202),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(1),
                                      bottomRight: Radius.circular(1),
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(1),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF080202),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(1),
                                      bottomRight: Radius.circular(1),
                                      topLeft: Radius.circular(0),
                                      topRight: Radius.circular(1),
                                    ),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.primaryColor,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 0),
                                ),
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'EB_Garamond',
                                  color: Colors.white,
                                  fontSize: 18,
                                  useGoogleFonts: false,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 0),
                                      child: Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                          ),
                                        ),
                                        child: CheckboxListTile(
                                          value: checkboxListTileValue4 ??=
                                              true,
                                          onChanged: (newValue) => setState(
                                              () => checkboxListTileValue4 =
                                                  newValue),
                                          title: Text(
                                            'Accept our Policies, terms and conditions',
                                            style: FlutterFlowTheme.title3
                                                .override(
                                              fontFamily: 'EB_Garamond',
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                          subtitle: Text(
                                            'I have read and accept all terms and conditions',
                                            style: FlutterFlowTheme.subtitle2
                                                .override(
                                              fontFamily: 'EB_Garamond',
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                          tileColor: Color(0xFFF5F5F5),
                                          dense: true,
                                          controlAffinity:
                                              ListTileControlAffinity.leading,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentDetailsWidget(),
                        ),
                      );
                    },
                    text: 'Proceed to Payment',
                    options: FFButtonOptions(
                      width: 250,
                      height: 40,
                      color: Color(0xFFE2240B),
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'EB_Garamond',
                        color: Colors.white,
                        fontSize: 18,
                        useGoogleFonts: false,
                      ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
