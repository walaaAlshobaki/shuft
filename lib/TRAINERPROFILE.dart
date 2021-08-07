import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shaftt_app/RemoteDataSource/FavoriteBooksScreen.dart';

import 'package:shaftt_app/model/TrainerModel.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class TRAINERPROFILE extends StatelessWidget {
  TrainerModel trainerModel;
  TRAINERPROFILE({Key key, @required this.trainerModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return DefaultTabController(
          length: 2,
          child: new Scaffold(
            backgroundColor: const Color(0xffffffff),
            body: Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(145.0, 131.0),
                  child: SizedBox(
                    width: 130.0,
                    height: 129.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 130.0, 129.0),
                          size: Size(130.0, 129.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 6.0, 118.0, 118.0),
                          size: Size(130.0, 129.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 118.0, 118.0),
                                size: Size(118.0, 118.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          3.3, 11.6, 108.2, 124.2),
                                      size: Size(118.0, 118.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                30.1, 0.0, 50.7, 46.2),
                                            size: Size(108.2, 124.2),
                                            pinTop: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              _svg_v18oq3,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 76.4, 108.2, 47.8),
                                            size: Size(108.2, 124.2),
                                            pinLeft: true,
                                            pinRight: true,
                                            pinBottom: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              _svg_gmyzj6,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                28.9, 76.4, 50.4, 18.4),
                                            size: Size(108.2, 124.2),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              _svg_m286gc,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                33.7, 49.9, 40.9, 38.6),
                                            size: Size(108.2, 124.2),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              _svg_a0hwki,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                39.0, 49.9, 30.4, 27.3),
                                            size: Size(108.2, 124.2),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              _svg_9dex4t,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                34.3, 4.5, 39.9, 61.8),
                                            size: Size(108.2, 124.2),
                                            pinTop: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              _svg_mkj9ct,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                31.7, 30.8, 44.9, 12.6),
                                            size: Size(108.2, 124.2),
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: Stack(
                                              children: <Widget>[
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      0.0, 0.0, 4.2, 12.6),
                                                  size: Size(44.9, 12.6),
                                                  pinLeft: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  fixedWidth: true,
                                                  child: SvgPicture.string(
                                                    _svg_pte2gb,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                Pinned.fromSize(
                                                  bounds: Rect.fromLTWH(
                                                      40.7, 0.0, 4.2, 12.6),
                                                  size: Size(44.9, 12.6),
                                                  pinRight: true,
                                                  pinTop: true,
                                                  pinBottom: true,
                                                  fixedWidth: true,
                                                  child: SvgPicture.string(
                                                    _svg_i6zz1h,
                                                    allowDrawingOutsideViewBox:
                                                        true,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                33.4, 1.8, 42.1, 37.3),
                                            size: Size(108.2, 124.2),
                                            pinTop: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              _svg_ibf869,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 118.0, 118.0),
                                      size: Size(118.0, 118.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.elliptical(
                                                  9999.0, 9999.0)),
                                        ),
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
                Padding(
                    padding: EdgeInsets.only(
                        top: 280, left: 0, right: 0, bottom: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  trainerModel.firstName +
                                      " " +
                                      trainerModel.lastName,
                                  style: TextStyle(
                                    fontFamily: 'Helvetica Neue',
                                    fontSize: 20,
                                    color: const Color(0xff1f1e4f),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  trainerModel.phoneNumber,
                                  style: TextStyle(
                                    fontFamily: 'Helvetica Neue',
                                    fontSize: 21,
                                    color: const Color(0xff55ce9d),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ])
                        ])),
                Transform.translate(
                  offset: Offset(35.0, 383.0),
                  child: Text(
                    'Car Photo',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 15,
                      color: const Color(0xff707070),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Transform.translate(
                  offset: Offset(35.0, 519.0),
                  child: Text(
                    'Class price',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 15,
                      color: const Color(0xff707070),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Transform.translate(
                  offset: Offset(35.0, 551.0),
                  child: Text(
                    ' Trainer schedule',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 15,
                      color: const Color(0xff707070),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                // Transform.translate(
                //   offset: Offset(203.5, 300.0),
                //   child: Transform.rotate(
                //     angle: -1.5708,
                //     child: Container(
                //       width: 8.0,
                //       height: 91.0,
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(10.0),
                //         color: const Color(0xff55ce9d),
                //       ),
                //     ),
                //   ),
                // ),
                Transform.translate(
                  offset: Offset(348.0, 131.0),
                  child: Text(
                    '4.0',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 17,
                      color: const Color(0xff1f1e4f),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Transform.translate(
                  offset: Offset(327.0, 132.0),
                  child: SizedBox(
                    width: 16.0,
                    height: 15.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 16.0, 15.3),
                          size: Size(16.0, 15.3),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_tlt7t6,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(35.0, 405.0),
                  child: SizedBox(
                    width: 565.0,
                    height: 90.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 90.0, 90.0),
                          size: Size(565.0, 90.0),
                          pinLeft: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: const Color(0xffffff),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(190.0, 0.0, 90.0, 90.0),
                          size: Size(565.0, 90.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: const Color(0x2c707070),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(95.0, 0.0, 90.0, 90.0),
                          size: Size(565.0, 90.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: const Color(0x2c707070),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(285.0, 0.0, 90.0, 90.0),
                          size: Size(565.0, 90.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: const Color(0x2c707070),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(380.0, 0.0, 90.0, 90.0),
                          size: Size(565.0, 90.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: const Color(0x2c707070),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(475.0, 0.0, 90.0, 90.0),
                          size: Size(565.0, 90.0),
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              color: const Color(0x2c707070),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(323.0, 508.0),
                  child: Text(
                    trainerModel.Lesson_price.toString() + " \$",
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 30,
                      color: const Color(0xff55ce9d),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Transform.translate(
                  offset: Offset(92.0, 865.0),
                  child: Container(
                    width: 230.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23.0),
                      color: const Color(0xfe55ce9d),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x9455ce9d),
                          offset: Offset(0, 0),
                          blurRadius: 9,
                        ),
                      ],
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(147.0, 874.0),
                  child: Text(
                    'Book now',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 25,
                      color: const Color(0xff1f1e4f),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Transform.translate(
                  offset: Offset(-4.0, -80.0),
                  child: SizedBox(
                    width: 422.0,
                    height: 186.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 422.0, 186.0),
                          size: Size(422.0, 186.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 422.0, 186.0),
                                size: Size(387.0, 186.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 422.0, 186.0),
                                      size: Size(422.0, 186.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          color: const Color(0xff1f1e4f),
                                        ),
                                      ),
                                    ),
                                    Pinned.fromSize(
                                      bounds: Rect.fromLTWH(
                                          141.3, 119.6, 139.4, 47.9),
                                      size: Size(422.0, 186.0),
                                      pinBottom: true,
                                      fixedWidth: true,
                                      fixedHeight: true,
                                      child: Stack(
                                        children: <Widget>[
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                0.0, 0.0, 56.6, 47.9),
                                            size: Size(139.4, 47.9),
                                            pinLeft: true,
                                            pinTop: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            child: SvgPicture.string(
                                              _svg_xs9yy8,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                101.7, 12.7, 18.2, 35.1),
                                            size: Size(139.4, 47.9),
                                            pinRight: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              _svg_ytu2we,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                53.9, 12.7, 20.9, 35.1),
                                            size: Size(139.4, 47.9),
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              _svg_xghj9h,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                78.2, 12.7, 22.0, 35.1),
                                            size: Size(139.4, 47.9),
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              _svg_mfahoa,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Pinned.fromSize(
                                            bounds: Rect.fromLTWH(
                                                121.2, 12.7, 18.2, 35.1),
                                            size: Size(139.4, 47.9),
                                            pinRight: true,
                                            pinBottom: true,
                                            fixedWidth: true,
                                            fixedHeight: true,
                                            child: SvgPicture.string(
                                              _svg_got99n,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
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
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(39.0, 140.3, 8.9, 17.7),
                          size: Size(422.0, 186.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: PageLink(
                            links: [
                              PageLinkInfo(
                                transition: LinkTransition.Fade,
                                ease: Curves.easeOut,
                                duration: 0.3,
                                pageBuilder: () => FavoriteBooksScreen(),
                              ),
                            ],
                            child: SvgPicture.string(
                              _svg_xvkh0h,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-27.0, 503.0),
                  child: SizedBox(
                    width: 600.0,
                    height: 350.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 469.0, 193.0),
                          size: Size(469.0, 261.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 469.0, 193.0),
                                size: Size(469.0, 193.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0.0, -1.0),
                                      end: Alignment(0.0, 1.0),
                                      colors: [
                                        const Color(0x00ffffff),
                                        const Color(0xffffffff)
                                      ],
                                      stops: [0.0, 1.0],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(50, 100, 10, 0),
                            child: SfCalendar(
                                backgroundColor: Colors.grey[300],
                                view: CalendarView.month,
                                blackoutDates: <DateTime>[
                                  DateTime(2020, 11, 10),
                                  DateTime(2020, 11, 15),
                                  DateTime(2020, 11, 20),
                                  DateTime(2020, 11, 22),
                                  DateTime(2020, 11, 24)
                                ],
                                onTap: (CalendarTapDetails details) {
                                  var date = details.date;
                                  TimeOfDay initialTime = TimeOfDay.now();
                                  Future<TimeOfDay> pickedTime = showTimePicker(
                                    context: context,
                                    initialTime: initialTime,
                                  );
                                  //   showTimePicker(
                                  //       context: context,
                                  //       initialTime: TimeOfDay.now());
                                },
                                blackoutDatesTextStyle: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Colors.red,
                                    decoration: TextDecoration.lineThrough)))
                      ],
                    ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(top: 330, left: 100, right: 100),
                //   child: Text(
                //     trainerModel.phoneNumber,
                //     style: TextStyle(
                //       fontFamily: 'Helvetica Neue',
                //       fontSize: 21,
                //       color: const Color(0xff55ce9d),
                //     ),
                //     textAlign: TextAlign.center,
                //   ),
                // ),
                Transform.translate(
                  offset: Offset(35.0, 129.0),
                  child:
                      // Adobe XD layer: 'gender-fluid' (group)
                      SizedBox(
                    width: 22.0,
                    height: 22.0,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 22.0, 22.0),
                          size: Size(22.0, 22.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_d5ngt1,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ));
    })));
  }

  static const String _svg_v18oq3 =
      '<svg viewBox="30.1 0.0 50.7 46.2" ><path transform="translate(-626.57, -1159.0)" d="M 697.293212890625 1205.229858398438 C 706.1951904296875 1191.868286132813 699.5057373046875 1177.134521484375 706.6268920898438 1169.51611328125 C 705.82421875 1170.1181640625 703.6251831054688 1169.860107421875 702.6075439453125 1169.670043945313 C 704.600341796875 1168.92333984375 706.58447265625 1167.903930664063 707.4007568359375 1165.805908203125 C 706.1817016601563 1166.52783203125 702.4467163085938 1167.0048828125 700.7449340820313 1166.613525390625 C 704.3989868164063 1165.957275390625 706.984375 1162.931396484375 707.2474365234375 1161.168090820313 C 699.12890625 1167.25537109375 668.7033081054688 1150.965209960938 665.359619140625 1164.637084960938 C 648.2571411132813 1164.637084960938 661.610107421875 1196.014770507813 662.2731323242188 1204.619995117188 L 697.293212890625 1205.229858398438 Z" fill="#888f94" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
  static const String _svg_gmyzj6 =
      '<svg viewBox="0.0 76.4 108.2 47.8" ><path transform="translate(-625.44, -1161.89)" d="M 625.9244995117188 1286.117065429688 C 624.7507934570313 1274.119018554688 625.5457763671875 1264.174438476563 629.8801879882813 1258.850341796875 C 638.1597290039063 1248.686157226563 654.8968505859375 1248.883544921875 664.2440185546875 1238.328857421875 L 679.5233154296875 1238.328857421875 L 694.7997436523438 1238.328857421875 C 704.1468505859375 1248.883544921875 720.8860473632813 1248.686157226563 729.16357421875 1258.850341796875 C 733.4999389648438 1264.174438476563 734.2948608398438 1274.119018554688 733.1211547851563 1286.117065429688 L 625.9244995117188 1286.117065429688 Z" fill="#1f1e4f" fill-opacity="0.25" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
  static const String _svg_m286gc =
      '<svg viewBox="28.9 76.4 50.4 18.4" ><path transform="translate(-626.53, -1161.89)" d="M 655.4039306640625 1245.471313476563 C 659.091796875 1243.67431640625 662.54443359375 1241.481079101563 665.3341064453125 1238.328857421875 L 680.6134033203125 1238.328857421875 L 695.8897705078125 1238.328857421875 C 698.6881103515625 1241.485717773438 702.1427001953125 1243.681030273438 705.8363037109375 1245.47998046875 C 696.6954345703125 1260.347778320313 663.397216796875 1260.565551757813 655.4039306640625 1245.471313476563 Z" fill="#686e73" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
  static const String _svg_a0hwki =
      '<svg viewBox="33.7 49.9 40.9 38.6" ><path transform="translate(-626.71, -1160.88)" d="M 660.364013671875 1241.617065429688 C 668.3832397460938 1236.0107421875 668.7465209960938 1220.201416015625 665.6967163085938 1210.7578125 L 680.9026489257813 1210.7578125 L 696.1049194335938 1210.7578125 C 693.0549926757813 1220.201416015625 693.4655151367188 1236.40283203125 701.2207641601563 1241.672973632813 C 696.1415405273438 1251.370849609375 665.8219604492188 1252.383666992188 660.364013671875 1241.617065429688 Z" fill="#ced8dd" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
  static const String _svg_9dex4t =
      '<svg viewBox="39.0 49.9 30.4 27.3" ><path transform="translate(-626.91, -1160.88)" d="M 667.591064453125 1224.516479492188 C 667.7847290039063 1219.593383789063 667.1409912109375 1214.600952148438 665.89794921875 1210.7578125 L 681.1039428710938 1210.7578125 L 696.3060913085938 1210.7578125 C 694.3856201171875 1216.704345703125 693.8951416015625 1225.401123046875 695.7307739257813 1232.341186523438 C 692.2762451171875 1236.720947265625 687.3742065429688 1239.482788085938 681.1039428710938 1237.363647460938 C 675.4782104492188 1235.464477539063 670.9559936523438 1230.387084960938 667.591064453125 1224.516479492188 Z" fill="#b1babf" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
  static const String _svg_pte2gb =
      '<svg viewBox="0.0 0.0 4.2 12.6" ><path transform="translate(-658.37, -1190.99)" d="M 662.5510864257813 1202.077392578125 C 662.3102416992188 1203.721435546875 661.5606079101563 1203.867919921875 660.7683715820313 1203.219482421875 C 660.2489624023438 1202.79541015625 659.8597412109375 1201.037841796875 659.4192504882813 1198.87255859375 C 658.9771118164063 1196.709228515625 658.121337890625 1195.136474609375 658.4392700195313 1192.664794921875 C 658.6436157226563 1191.072998046875 659.1119384765625 1190.70751953125 660.0582275390625 1191.193359375 C 660.6248779296875 1191.4833984375 660.7867431640625 1192.523193359375 661.8197631835938 1192.846923828125 L 662.5510864257813 1202.077392578125 Z" fill="#ced8dd" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
  static const String _svg_i6zz1h =
      '<svg viewBox="40.7 0.0 4.2 12.6" ><path transform="translate(-659.91, -1190.99)" d="M 700.618896484375 1202.077392578125 C 700.85693359375 1203.721435546875 701.6094360351563 1203.867919921875 702.398681640625 1203.219482421875 C 702.9181518554688 1202.79541015625 703.3102416992188 1201.037841796875 703.7496948242188 1198.87255859375 C 704.1901245117188 1196.709228515625 705.0487060546875 1195.136474609375 704.7306518554688 1192.664794921875 C 704.5264282226563 1191.072998046875 704.0551147460938 1190.70751953125 703.10888671875 1191.193359375 C 702.544189453125 1191.4833984375 702.38330078125 1192.523193359375 701.349365234375 1192.846923828125 L 700.618896484375 1202.077392578125 Z" fill="#ced8dd" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
  static const String _svg_mkj9ct =
      '<svg viewBox="34.3 4.5 39.9 61.8" ><path transform="translate(-626.73, -1159.17)" d="M 700.3209228515625 1185.499755859375 C 700.3209228515625 1190.367919921875 701.3626098632813 1195.864624023438 700.5011596679688 1200.777099609375 C 698.8485107421875 1210.186889648438 692.1580200195313 1225.398803710938 680.9115600585938 1225.398803710938 C 669.6641235351563 1225.398803710938 662.974609375 1210.186889648438 661.3209838867188 1200.777099609375 C 660.4576416015625 1195.864624023438 661.501220703125 1190.367919921875 661.501220703125 1185.499755859375 C 658.8040161132813 1155.696655273438 704.6340942382813 1157.015014648438 700.3209228515625 1185.499755859375 Z" fill="#ced8dd" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
  static const String _svg_ibf869 =
      '<svg viewBox="33.4 1.8 42.1 37.3" ><path transform="translate(-626.69, -1159.07)" d="M 670.26220703125 1174.073852539063 C 669.8566284179688 1182.592407226563 689.17333984375 1176.932006835938 689.57421875 1183.874877929688 C 691.0949096679688 1180.649780273438 687.7192993164063 1177.72705078125 684.2271118164063 1176.459716796875 C 691.5401000976563 1176.887573242188 695.1459350585938 1182.605834960938 694.48583984375 1187.122436523438 C 696.9421997070313 1182.077758789063 694.5572509765625 1174.927612304688 689.3112182617188 1173.260498046875 C 701.7825317382813 1176.186279296875 699.562255859375 1191.68310546875 700.110595703125 1196.152587890625 C 701.7053833007813 1186.944091796875 704.551025390625 1177.571899414063 698.1293334960938 1169.141967773438 C 690.4955444335938 1159.1201171875 670.1639404296875 1157.029174804688 663.9090576171875 1169.5380859375 C 658.1648559570313 1181.0283203125 660.1865844726563 1189.847412109375 661.6116943359375 1198.212646484375 C 662.1118774414063 1188.05322265625 662.7642822265625 1180.05517578125 670.26220703125 1174.073852539063 Z" fill="#888f94" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
  static const String _svg_tlt7t6 =
      '<svg viewBox="0.0 10.3 16.0 15.3" ><path transform="translate(0.0, 0.0)" d="M 15.89395236968994 16.08515739440918 C 15.70214653015137 15.49720573425293 15.17855548858643 15.11730480194092 14.5601053237915 15.11730480194092 L 10.57181930541992 15.11730480194092 L 9.315866470336914 11.3032054901123 C 9.12281322479248 10.71690559387207 8.600314140319824 10.33899974822998 7.983642578125 10.33899974822998 C 7.981678009033203 10.33899974822998 7.979650974273682 10.33899974822998 7.977686405181885 10.33903121948242 C 7.3584885597229 10.34146404266357 6.836206912994385 10.724045753479 6.647176265716553 11.31371402740479 L 5.427833557128906 15.11730480194092 L 1.406336545944214 15.11730480194092 C 0.7863278985023499 15.11730480194092 0.2623311579227448 15.49848365783691 0.07146093994379044 16.08836936950684 C -0.1194404885172844 16.67828750610352 0.08190719783306122 17.29417991638184 0.5844188928604126 17.65742874145508 L 3.838256120681763 20.00933265686035 L 2.585828065872192 23.81282997131348 C 2.391964197158813 24.4015007019043 2.589975357055664 25.01826667785645 3.090179443359375 25.38413429260254 C 3.341419696807861 25.56789588928223 3.629798650741577 25.6597900390625 3.918364763259888 25.6597900390625 C 4.204311847686768 25.65975952148438 4.490383148193359 25.56948471069336 4.740375995635986 25.38878059387207 L 7.999857425689697 23.03282165527344 L 11.22060966491699 25.38482093811035 C 11.72028255462646 25.74972152709961 12.36738967895508 25.75146865844727 12.86912250518799 25.389404296875 C 13.37082290649414 25.02730941772461 13.57294940948486 24.41263198852539 13.38410663604736 23.82337188720703 L 12.1613655090332 20.00933265686035 L 15.38754272460938 17.65340614318848 C 15.88699817657471 17.28866004943848 16.08581924438477 16.67311096191406 15.89395236968994 16.08515739440918 L 15.89395236968994 16.08515739440918 Z" fill="#55ce9d" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
  static const String _svg_qm75f0 =
      '<svg viewBox="1.4 74.7 308.5 1.0" ><path transform="translate(-117.86, -2864.08)" d="M 119.2647399902344 2938.74267578125 C 119.2647399902344 2938.74267578125 427.8133544921875 2938.74267578125 427.8133544921875 2938.74267578125" fill="none" stroke="#e9e9f0" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
  static const String _svg_hsb2am =
      '<svg viewBox="0.0 0.0 7.1 12.1" ><path transform="translate(-1803.62, -4362.34)" d="M 1810.700317382813 4362.341796875 C 1810.700317382813 4362.341796875 1803.61572265625 4368.64453125 1803.61572265625 4368.64453125 C 1803.61572265625 4368.64453125 1810.700317382813 4374.45166015625 1810.700317382813 4374.45166015625" fill="none" stroke="#8898aa" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
  static const String _svg_b71jwl =
      '<svg viewBox="0.0 0.0 7.1 12.1" ><path transform="translate(-1803.62, -4362.34)" d="M 1803.61572265625 4362.341796875 C 1803.61572265625 4362.341796875 1810.703369140625 4368.64453125 1810.703369140625 4368.64453125 C 1810.703369140625 4368.64453125 1803.61572265625 4374.45166015625 1803.61572265625 4374.45166015625" fill="none" stroke="#8898aa" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
  static const String _svg_xs9yy8 =
      '<svg viewBox="0.0 0.0 56.6 47.9" ><defs><linearGradient id="gradient" x1="-0.021298" y1="0.355825" x2="2.739637" y2="1.336241"><stop offset="0.0" stop-color="#ff33c794"  /><stop offset="1.0" stop-color="#ff007ee7"  /></linearGradient></defs><path transform="translate(948.85, 189.04)" d="M -897.49267578125 -176.3446350097656 L -900.7603759765625 -161.0198364257813 L -906.489013671875 -161.0198364257813 L -903.2213134765625 -176.3446350097656 L -908.4537353515625 -176.3446350097656 L -912.050537109375 -159.4635772705078 L -924.6741943359375 -165.6163024902344 L -905.309326171875 -189.0368804931641 L -945.1671142578125 -172.1504821777344 L -929.4876708984375 -164.5083312988281 L -948.8525390625 -141.0877380371094 L -912.7025146484375 -156.4033050537109 L -915.9404296875 -141.20703125 L -910.7080078125 -141.20703125 L -907.4404296875 -156.5526428222656 L -901.711669921875 -156.5526428222656 L -904.979248046875 -141.20703125 L -899.746826171875 -141.20703125 L -892.26025390625 -176.3446350097656 L -897.49267578125 -176.3446350097656 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
  static const String _svg_ytu2we =
      '<svg viewBox="101.7 12.7 18.2 35.1" ><defs><linearGradient id="gradient" x1="-5.345551" y1="-0.410938" x2="3.239753" y2="0.926948"><stop offset="0.0" stop-color="#ff33c794"  /><stop offset="1.0" stop-color="#ff007ee7"  /></linearGradient></defs><path transform="translate(857.35, 177.62)" d="M -754.5556640625 -160.4620666503906 L -749.0750732421875 -160.4620666503906 L -755.6102905273438 -129.7918243408203 L -750.3781127929688 -129.7918243408203 L -743.8427734375 -160.4620666503906 L -738.3622436523438 -160.4620666503906 L -737.4109497070313 -164.9294128417969 L -753.604248046875 -164.9294128417969 L -754.5556640625 -160.4620666503906 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
  static const String _svg_xghj9h =
      '<svg viewBox="53.9 12.7 20.9 35.1" ><defs><linearGradient id="gradient" x1="-2.54883" y1="-0.046388" x2="4.91661" y2="1.291512"><stop offset="0.0" stop-color="#ff33c794"  /><stop offset="1.0" stop-color="#ff007ee7"  /></linearGradient></defs><path transform="translate(900.34, 177.62)" d="M -841.9021606445313 -142.0762939453125 L -846.3900146484375 -129.7917785644531 L -841.1166381835938 -129.7917785644531 L -838.3246459960938 -137.4021606445313 L -831.8099975585938 -137.4021606445313 L -832.306396484375 -129.7917785644531 L -827.0116577148438 -129.7917785644531 L -826.24658203125 -142.138427734375 L -825.4605102539063 -164.9290008544922 L -832.9472045898438 -164.9290008544922 L -841.9021606445313 -142.0762939453125 Z M -831.5409545898438 -141.8694000244141 L -836.7116088867188 -141.8694000244141 L -830.4658203125 -159.1176147460938 L -831.5409545898438 -141.8694000244141 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
  static const String _svg_mfahoa =
      '<svg viewBox="78.2 12.7 22.0 35.1" ><defs><linearGradient id="gradient" x1="-3.425799" y1="-0.241082" x2="3.661497" y2="1.096803"><stop offset="0.0" stop-color="#ff33c794"  /><stop offset="1.0" stop-color="#ff007ee7"  /></linearGradient></defs><path transform="translate(878.54, 177.62)" d="M -800.3519897460938 -129.7918243408203 L -795.1197509765625 -129.7918243408203 L -791.85205078125 -145.1374664306641 L -783.82763671875 -145.1374664306641 L -782.8764038085938 -149.6046295166016 L -790.9006958007813 -149.6046295166016 L -788.5843505859375 -160.4620666503906 L -779.2571411132813 -160.4620666503906 L -778.3058471679688 -164.9294128417969 L -792.865478515625 -164.9294128417969 L -800.3519897460938 -129.7918243408203 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
  static const String _svg_got99n =
      '<svg viewBox="121.2 12.7 18.2 35.1" ><defs><linearGradient id="gradient" x1="-6.328149" y1="-0.564068" x2="2.257095" y2="0.773818"><stop offset="0.0" stop-color="#ff33c794"  /><stop offset="1.0" stop-color="#ff007ee7"  /></linearGradient></defs><path transform="translate(839.81, 177.62)" d="M -716.5617065429688 -164.9294128417969 L -717.5131225585938 -160.4620666503906 L -712.0325317382813 -160.4620666503906 L -718.56787109375 -129.7918243408203 L -713.3355712890625 -129.7918243408203 L -706.80029296875 -160.4620666503906 L -701.3197631835938 -160.4620666503906 L -700.3682861328125 -164.9294128417969 L -716.5617065429688 -164.9294128417969 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
  static const String _svg_xvkh0h =
      '<svg viewBox="35.0 96.3 8.9 17.7" ><path transform="translate(-5981.12, -4676.98)" d="M 6024.9755859375 4773.32080078125 L 6016.1240234375 4782.17236328125 L 6024.9755859375 4791.02587890625" fill="none" stroke="#55ce9d" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
  static const String _svg_d5ngt1 =
      '<svg viewBox="0.0 0.0 22.0 22.0" ><path  d="M 11.90046787261963 -1.46031361509813e-05 L 11.90046787261963 2.478173971176147 L 17.7695484161377 2.478173971176147 L 13.41297245025635 6.834749221801758 C 12.01459217071533 5.79730749130249 10.28324604034424 5.183411121368408 8.408340454101563 5.183411121368408 C 3.764518737792969 5.183411121368408 -3.0517578125e-05 8.947916984558105 -3.0517578125e-05 13.59173965454102 C -3.0517578125e-05 18.23551750183105 3.764518737792969 22.00006484985352 8.408297538757324 22.00006484985352 C 13.05207633972168 22.00006484985352 16.81662559509277 18.23551750183105 16.81662559509277 13.59173774719238 C 16.81662559509277 11.71683216094971 16.20272827148438 9.985443115234375 15.16528797149658 8.587062835693359 L 19.52186393737793 4.230531215667725 L 19.52186393737793 10.09961318969727 L 22.00005340576172 10.09961318969727 L 22.00005340576172 -1.52587890625e-05 L 11.90046787261963 -1.46031361509813e-05 Z M 8.408298492431641 19.23080635070801 C 5.293911457061768 19.23080635070801 2.769187927246094 16.70608139038086 2.769187927246094 13.59169673919678 C 2.769187927246094 10.47730922698975 5.293911457061768 7.952585220336914 8.408298492431641 7.952585220336914 C 11.52268600463867 7.952585220336914 14.04740905761719 10.47730922698975 14.04740905761719 13.59169673919678 C 14.04740905761719 16.70612525939941 11.52268600463867 19.23080635070801 8.408298492431641 19.23080635070801 Z" fill="#007ee7" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
}
