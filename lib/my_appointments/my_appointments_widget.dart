import '../components/book_appointment_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppointmentsWidget extends StatefulWidget {
  MyAppointmentsWidget({Key key}) : super(key: key);

  @override
  _MyAppointmentsWidgetState createState() => _MyAppointmentsWidgetState();
}

class _MyAppointmentsWidgetState extends State<MyAppointmentsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.background,
        automaticallyImplyLeading: false,
        title: Text(
          'Archieve',
          style: FlutterFlowTheme.title1,
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
            child: Image.asset(
              'assets/images/att_logo_klein_claim_neu-5.png',
              width: 120,
              height: 40,
              fit: BoxFit.fitWidth,
            ),
          )
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.background,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Container(
                height: 720,
                child: BookAppointmentWidget(),
              );
            },
          );
        },
        backgroundColor: FlutterFlowTheme.primaryColor,
        elevation: 8,
        child: Icon(
          Icons.add_rounded,
          color: FlutterFlowTheme.textColor,
          size: 36,
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 12),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Here you can find all your tests',
                    style: FlutterFlowTheme.bodyText1,
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: FlutterFlowTheme.grayDark,
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(1, 1, 1, 1),
                            child: Text(
                              'Test: temp_2021-11-02',
                              style: FlutterFlowTheme.subtitle1.override(
                                fontFamily: 'Open Sans',
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(1, 1, 1, 10),
                            child: Text(
                              'User: Markus',
                              style: FlutterFlowTheme.subtitle1.override(
                                fontFamily: 'Open Sans',
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/images/IMG_D56C4D4329B7-1.jpeg',
                            width: MediaQuery.of(context).size.width * 0.8,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: FlutterFlowTheme.grayDark,
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(1, 1, 1, 1),
                            child: Text(
                              'Test: temp_2021-11-01',
                              style: FlutterFlowTheme.subtitle1.override(
                                fontFamily: 'Open Sans',
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(1, 1, 1, 10),
                            child: Text(
                              'User: Markus',
                              style: FlutterFlowTheme.subtitle1.override(
                                fontFamily: 'Open Sans',
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/images/IMG_D56C4D4329B7-1.jpeg',
                            width: MediaQuery.of(context).size.width * 0.8,
                            fit: BoxFit.cover,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
