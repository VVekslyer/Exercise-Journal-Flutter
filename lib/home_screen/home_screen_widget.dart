import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenWidget extends StatefulWidget {
  const HomeScreenWidget({Key? key}) : super(key: key);

  @override
  _HomeScreenWidgetState createState() => _HomeScreenWidgetState();
}

class _HomeScreenWidgetState extends State<HomeScreenWidget> {
  DateTimeRange? calendarSelectedDay;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Align(
            alignment: AlignmentDirectional(0, -0.05),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Text(
                              'Welcome back,',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Sofia Pro',
                                    fontWeight: FontWeight.bold,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Text(
                              'Vitaliy.',
                              style:
                                  FlutterFlowTheme.of(context).title1.override(
                                        fontFamily: 'Sofia Pro',
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                        lineHeight: 1.1,
                                      ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                FlutterFlowCalendar(
                  color: FlutterFlowTheme.of(context).primaryColor,
                  weekFormat: true,
                  weekStartsMonday: true,
                  onChange: (DateTimeRange? newSelectedDate) {
                    setState(() => calendarSelectedDay = newSelectedDate);
                  },
                  titleStyle: TextStyle(
                    fontFamily: 'Sofia Pro',
                    fontWeight: FontWeight.w500,
                  ),
                  dayOfWeekStyle: TextStyle(
                    fontFamily: 'Sofia Pro',
                    fontWeight: FontWeight.w300,
                  ),
                  dateStyle: TextStyle(
                    fontFamily: 'Sofia Pro',
                    fontWeight: FontWeight.w500,
                  ),
                  selectedDateStyle: TextStyle(
                    fontFamily: 'Sofia Pro',
                    fontWeight: FontWeight.w500,
                  ),
                  inactiveDateStyle: TextStyle(
                    fontFamily: 'Sofia Pro',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    ListTile(
                      title: Text(
                        'LEG DAY',
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Sofia Pro',
                              fontSize: 24,
                              useGoogleFonts: false,
                            ),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_down,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 32,
                      ),
                      tileColor: FlutterFlowTheme.of(context).primaryBackground,
                      dense: false,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    ),
                    ListTile(
                      title: Text(
                        'PUSH DAY',
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Sofia Pro',
                              fontSize: 24,
                              useGoogleFonts: false,
                            ),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_down,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 32,
                      ),
                      tileColor: FlutterFlowTheme.of(context).primaryBackground,
                      dense: false,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    ),
                    ListTile(
                      title: Text(
                        'PULL DAY',
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Sofia Pro',
                              fontSize: 24,
                              useGoogleFonts: false,
                            ),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_down,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 32,
                      ),
                      tileColor: FlutterFlowTheme.of(context).primaryBackground,
                      dense: false,
                      contentPadding:
                          EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    ),
                  ],
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0, 0.95),
                    child: Container(
                      width: 320,
                      height: 37,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 149, 76, 7),
                            FlutterFlowTheme.of(context).secondaryColor
                          ],
                          stops: [0, 1],
                          begin: AlignmentDirectional(-1, 0),
                          end: AlignmentDirectional(1, 0),
                        ),
                        borderRadius: BorderRadius.circular(12),
                        shape: BoxShape.rectangle,
                      ),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('AddWorkoutButton pressed ...');
                        },
                        text: 'Add Workout',
                        icon: Icon(
                          Icons.add_outlined,
                          size: 24,
                        ),
                        options: FFButtonOptions(
                          height: 40,
                          color: Colors.transparent,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Sofia Pro',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
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
