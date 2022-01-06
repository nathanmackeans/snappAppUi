import '../backend/backend.dart';
import '../components/map_bottom_sheet_widget.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationFromMapWidget extends StatefulWidget {
  const LocationFromMapWidget({Key key}) : super(key: key);

  @override
  _LocationFromMapWidgetState createState() => _LocationFromMapWidgetState();
}

class _LocationFromMapWidgetState extends State<LocationFromMapWidget> {
  LatLng googleMapsCenter;
  Completer<GoogleMapController> googleMapsController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<AnotherSamplecollectionRecord>>(
      stream: queryAnotherSamplecollectionRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 30,
              height: 30,
              child: CircularProgressIndicator(
                color: Color(0xFFE2240B),
              ),
            ),
          );
        }
        List<AnotherSamplecollectionRecord>
            locationFromMapAnotherSamplecollectionRecordList = snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final locationFromMapAnotherSamplecollectionRecord =
            locationFromMapAnotherSamplecollectionRecordList.isNotEmpty
                ? locationFromMapAnotherSamplecollectionRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.primaryColor,
            automaticallyImplyLeading: true,
            title: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Choose a Location',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'EB_Garamond',
                    color: Colors.white,
                    fontSize: 25,
                    useGoogleFonts: false,
                  ),
                ),
              ],
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
                Expanded(
                  child: FlutterFlowGoogleMap(
                    controller: googleMapsController,
                    onCameraIdle: (latLng) => googleMapsCenter = latLng,
                    initialLocation: googleMapsCenter ??=
                        LatLng(13.106061, -59.613158),
                    markers: [
                      if (locationFromMapAnotherSamplecollectionRecord != null)
                        FlutterFlowMarker(
                          locationFromMapAnotherSamplecollectionRecord
                              .reference.path,
                          locationFromMapAnotherSamplecollectionRecord
                              .sampleField3,
                          () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.white,
                              barrierColor: Color(0xFF0E0C0C),
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: Container(
                                    height: 250,
                                    child: MapBottomSheetWidget(),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                    ],
                    markerColor: GoogleMarkerColor.violet,
                    mapType: MapType.terrain,
                    style: GoogleMapStyle.standard,
                    initialZoom: 14,
                    allowInteraction: true,
                    allowZoom: true,
                    showZoomControls: true,
                    showLocation: true,
                    showCompass: true,
                    showMapToolbar: true,
                    showTraffic: false,
                    centerMapOnMarkerTap: true,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
