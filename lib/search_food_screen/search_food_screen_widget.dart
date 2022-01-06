import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchFoodScreenWidget extends StatefulWidget {
  const SearchFoodScreenWidget({Key key}) : super(key: key);

  @override
  _SearchFoodScreenWidgetState createState() => _SearchFoodScreenWidgetState();
}

class _SearchFoodScreenWidgetState extends State<SearchFoodScreenWidget> {
  String choiceChipsValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController textController;

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
        title: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                child: TextFormField(
                  controller: textController,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'Search for a meal',
                    labelStyle: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'EB_Garamond',
                      useGoogleFonts: false,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.0),
                        topRight: Radius.circular(4.0),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.location_on,
                    ),
                  ),
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'EB_Garamond',
                    useGoogleFonts: false,
                  ),
                ),
              ),
            ),
            Icon(
              Icons.search_sharp,
              color: Color(0xFFEBE9E9),
              size: 24,
            ),
          ],
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFFE2240B),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: FlutterFlowChoiceChips(
                      initialOption: choiceChipsValue ??= 'Delivery',
                      options: [
                        ChipData('Delivery', Icons.delivery_dining),
                        ChipData('Dining', Icons.local_dining),
                        ChipData('Snacks', FontAwesomeIcons.hamburger),
                        ChipData('Vegetarian', Icons.gradient)
                      ],
                      onChanged: (val) =>
                          setState(() => choiceChipsValue = val),
                      selectedChipStyle: ChipStyle(
                        backgroundColor: FlutterFlowTheme.secondaryColor,
                        textStyle: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                        iconColor: Colors.white,
                        iconSize: 18,
                        elevation: 4,
                      ),
                      unselectedChipStyle: ChipStyle(
                        backgroundColor: Color(0x00FFFFFF),
                        textStyle: FlutterFlowTheme.bodyText2.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF262D34),
                        ),
                        iconColor: Color(0xFF0E0C0C),
                        iconSize: 18,
                        elevation: 4,
                      ),
                      chipSpacing: 5,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 100,
                      height: MediaQuery.of(context).size.height * 1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://picsum.photos/seed/343/600',
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Slidable(
                                        actionPane:
                                            const SlidableScrollActionPane(),
                                        secondaryActions: [
                                          IconSlideAction(
                                            caption: 'Add to Cart',
                                            color: Color(0xFF09D96B),
                                            icon: Icons.shopping_cart,
                                            onTap: () {
                                              print(
                                                  'SlidableActionWidget pressed ...');
                                            },
                                          ),
                                        ],
                                        child: ListTile(
                                          title: Text(
                                            'Turkey Sauce',
                                            style: FlutterFlowTheme.title3
                                                .override(
                                              fontFamily: 'EB_Garamond',
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                          subtitle: Text(
                                            'dining',
                                            style: FlutterFlowTheme.subtitle2
                                                .override(
                                              fontFamily: 'EB_Garamond',
                                              useGoogleFonts: false,
                                            ),
                                          ),
                                          tileColor: Colors.white,
                                          dense: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
