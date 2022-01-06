import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MapBottomSheetWidget extends StatefulWidget {
  const MapBottomSheetWidget({Key key}) : super(key: key);

  @override
  _MapBottomSheetWidgetState createState() => _MapBottomSheetWidgetState();
}

class _MapBottomSheetWidgetState extends State<MapBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 20, 20),
                child: Text(
                  'Selected Location',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'EB_Garamond',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    useGoogleFonts: false,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '11 Paula Sans Avenue, Milkeeway',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'EB_Garamond',
                  fontSize: 16,
                  useGoogleFonts: false,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Confirm Location',
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
    );
  }
}
