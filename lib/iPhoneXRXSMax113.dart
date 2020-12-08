import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'dart:ui' as ui;
import './iPhoneXRXSMax114.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class iPhoneXRXSMax113 extends StatelessWidget {
  iPhoneXRXSMax113({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'Templates - iPhone …' (group)
          SizedBox(
            width: 414.0,
            height: 896.0,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 414.0, 896.0),
                  size: Size(414.0, 896.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child:
                      // Adobe XD layer: 'Wallpaper' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(-333.0, -92.0, 1079.0, 1080.0),
                        size: Size(414.0, 896.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'Wallpaper' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 1079.0, 1080.0),
                              size: Size(1079.0, 1080.0),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child:
                                  // Adobe XD layer: 'Bitmap' (shape)
                                  Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: const AssetImage(''),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 414.0, 896.0),
                        size: Size(414.0, 896.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'Mask' (shape)
                            Container(
                          decoration: BoxDecoration(),
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(12.0, 782.0, 392.0, 103.0),
                  size: Size(414.0, 896.0),
                  pinLeft: true,
                  pinRight: true,
                  pinBottom: true,
                  fixedHeight: true,
                  child:
                      // Adobe XD layer: 'Dock' (shape)
                      ClipRect(
                    child: BackdropFilter(
                      filter: ui.ImageFilter.blur(sigmaX: 30.03, sigmaY: 30.03),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(31.0),
                          color: const Color(0x4dffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(22.0, 15.0, 375.4, 853.0),
                  size: Size(414.0, 896.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child:
                      // Adobe XD layer: 'Springboard App Lay…' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(8.0, 64.0, 354.0, 789.0),
                        size: Size(375.4, 853.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        pinBottom: true,
                        child:
                            // Adobe XD layer: 'Homescreen Apps - i…' (shape)
                            Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: const AssetImage(''),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(163.0, 749.0, 44.0, 8.0),
                        size: Size(375.4, 853.0),
                        pinBottom: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child:
                            // Adobe XD layer: 'Pagination Dots' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 8.0, 8.0),
                              size: Size(44.0, 8.0),
                              pinLeft: true,
                              pinTop: true,
                              pinBottom: true,
                              fixedWidth: true,
                              child:
                                  // Adobe XD layer: 'Unselected' (shape)
                                  ClipOval(
                                child: BackdropFilter(
                                  filter: ui.ImageFilter.blur(
                                      sigmaX: 20.0, sigmaY: 20.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                      color: const Color(0xfff8f8f8),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(18.0, 0.0, 8.0, 8.0),
                              size: Size(44.0, 8.0),
                              pinTop: true,
                              pinBottom: true,
                              fixedWidth: true,
                              child:
                                  // Adobe XD layer: 'Selected' (shape)
                                  ClipOval(
                                child: BackdropFilter(
                                  filter: ui.ImageFilter.blur(
                                      sigmaX: 20.0, sigmaY: 20.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                      color: const Color(0x66f8f8f8),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(36.0, 0.0, 8.0, 8.0),
                              size: Size(44.0, 8.0),
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              fixedWidth: true,
                              child:
                                  // Adobe XD layer: 'Unselected' (shape)
                                  ClipOval(
                                child: BackdropFilter(
                                  filter: ui.ImageFilter.blur(
                                      sigmaX: 20.0, sigmaY: 20.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(9999.0, 9999.0)),
                                      color: const Color(0x66f8f8f8),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 375.4, 20.0),
                        size: Size(375.4, 853.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        fixedHeight: true,
                        child:
                            // Adobe XD layer: 'Status Bar' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(348.6, 4.1, 26.9, 12.5),
                              size: Size(375.4, 20.0),
                              pinRight: true,
                              fixedWidth: true,
                              fixedHeight: true,
                              child:
                                  // Adobe XD layer: 'Battery' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 24.3, 12.5),
                                    size: Size(26.9, 12.5),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child:
                                        // Adobe XD layer: 'Border' (shape)
                                        Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(2.67),
                                        border: Border.all(
                                            width: 1.0,
                                            color: const Color(0x59ffffff)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(25.4, 4.0, 1.5, 4.4),
                                    size: Size(26.9, 12.5),
                                    pinRight: true,
                                    fixedWidth: true,
                                    fixedHeight: true,
                                    child:
                                        // Adobe XD layer: 'Cap' (shape)
                                        SvgPicture.string(
                                      _svg_2uc4no,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(2.2, 2.2, 19.9, 8.1),
                                    size: Size(26.9, 12.5),
                                    pinLeft: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    fixedWidth: true,
                                    child:
                                        // Adobe XD layer: 'Capacity' (shape)
                                        Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(1.33),
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(326.1, 4.1, 16.9, 12.1),
                              size: Size(375.4, 20.0),
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              fixedWidth: true,
                              child:
                                  // Adobe XD layer: 'Wifi' (shape)
                                  SvgPicture.string(
                                _svg_7bmegu,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(301.8, 4.5, 18.8, 11.8),
                              size: Size(375.4, 20.0),
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              fixedWidth: true,
                              child:
                                  // Adobe XD layer: 'Cellular Connection' (shape)
                                  SvgPicture.string(
                                _svg_js46h1,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 60.0, 20.0),
                              size: Size(375.4, 20.0),
                              pinLeft: true,
                              pinTop: true,
                              pinBottom: true,
                              fixedWidth: true,
                              child:
                                  // Adobe XD layer: 'Time Style' (group)
                                  Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.0, 60.0, 20.0),
                                    size: Size(60.0, 20.0),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child:
                                        // Adobe XD layer: 'Time' (text)
                                        Text(
                                      '9:41',
                                      style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        fontSize: 15,
                                        color: const Color(0xffffffff),
                                        letterSpacing: -0.3,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(7.0, 627.5, 67.0, 83.5),
                        size: Size(375.4, 853.0),
                        pinLeft: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child:
                            // Adobe XD layer: 'app icon' (group)
                            Stack(
                          children: <Widget>[
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 70.5, 67.0, 13.0),
                              size: Size(67.0, 83.5),
                              pinLeft: true,
                              pinRight: true,
                              pinBottom: true,
                              fixedHeight: true,
                              child: SingleChildScrollView(
                                  child: Text(
                                'Shaftt',
                                style: TextStyle(
                                  fontFamily: 'Helvetica Neue',
                                  fontSize: 13,
                                  color: const Color(0xffffffff),
                                  height: 0.6153846153846154,
                                ),
                                textAlign: TextAlign.center,
                              )),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.0, 67.0, 66.5),
                              size: Size(67.0, 83.5),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              pinBottom: true,
                              child: Stack(
                                children: <Widget>[
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(0.0, 0.5, 67.0, 66.0),
                                    size: Size(67.0, 66.5),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        color: const Color(0x28ffffff),
                                        border: Border.all(
                                            width: 0.5,
                                            color: const Color(0x28707070)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(4.0, 3.5, 60.0, 59.0),
                                    size: Size(67.0, 66.5),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.25,
                                            color: const Color(0x28707070)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds:
                                        Rect.fromLTWH(0.0, 19.5, 67.0, 14.0),
                                    size: Size(67.0, 66.5),
                                    pinLeft: true,
                                    pinRight: true,
                                    fixedHeight: true,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.25,
                                            color: const Color(0x28707070)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds:
                                        Rect.fromLTWH(-5.5, 26.2, 65.7, 13.2),
                                    size: Size(67.0, 66.5),
                                    pinTop: true,
                                    pinBottom: true,
                                    fixedWidth: true,
                                    child: Transform.rotate(
                                      angle: -1.5708,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 0.25,
                                              color: const Color(0x28707070)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds:
                                        Rect.fromLTWH(0.0, 33.5, 67.0, 13.0),
                                    size: Size(67.0, 66.5),
                                    pinLeft: true,
                                    pinRight: true,
                                    fixedHeight: true,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.25,
                                            color: const Color(0x28707070)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds:
                                        Rect.fromLTWH(7.7, 26.2, 65.7, 13.2),
                                    size: Size(67.0, 66.5),
                                    pinTop: true,
                                    pinBottom: true,
                                    fixedWidth: true,
                                    child: Transform.rotate(
                                      angle: -1.5708,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 0.25,
                                              color: const Color(0x28707070)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(4.0, 3.5, 60.0, 59.0),
                                    size: Size(67.0, 66.5),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        border: Border.all(
                                            width: 0.25,
                                            color: const Color(0x28707070)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds:
                                        Rect.fromLTWH(16.0, 15.5, 36.0, 35.0),
                                    size: Size(67.0, 66.5),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        border: Border.all(
                                            width: 0.25,
                                            color: const Color(0x28707070)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds:
                                        Rect.fromLTWH(21.0, 19.5, 26.0, 27.0),
                                    size: Size(67.0, 66.5),
                                    fixedWidth: true,
                                    fixedHeight: true,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(9999.0, 9999.0)),
                                        border: Border.all(
                                            width: 0.25,
                                            color: const Color(0x28707070)),
                                      ),
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(4.7, 3.9, 58.5, 58.5),
                                    size: Size(67.0, 66.5),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: SvgPicture.string(
                                      _svg_5utw6s,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Pinned.fromSize(
                                    bounds: Rect.fromLTWH(4.7, 3.9, 58.5, 58.5),
                                    size: Size(67.0, 66.5),
                                    pinLeft: true,
                                    pinRight: true,
                                    pinTop: true,
                                    pinBottom: true,
                                    child: SvgPicture.string(
                                      _svg_hr67jo,
                                      allowDrawingOutsideViewBox: true,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(0.0, 0.5, 67.0, 66.0),
                              size: Size(67.0, 83.5),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              fixedHeight: true,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  gradient: LinearGradient(
                                    begin: Alignment(0.0, 0.66),
                                    end: Alignment(0.0, -1.0),
                                    colors: [
                                      const Color(0xff55ce9d),
                                      const Color(0xffa7e8ce)
                                    ],
                                    stops: [0.0, 1.0],
                                  ),
                                ),
                              ),
                            ),
                            Pinned.fromSize(
                              bounds: Rect.fromLTWH(12.7, 10.4, 42.5, 46.8),
                              size: Size(67.0, 83.5),
                              pinLeft: true,
                              pinRight: true,
                              pinTop: true,
                              fixedHeight: true,
                              child: SvgPicture.string(
                                _svg_26380a,
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
          Transform.translate(
            offset: Offset(6.0, 621.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.SlideDown,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => iPhoneXRXSMax114(),
                ),
              ],
              child: Container(
                width: 121.0,
                height: 121.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(61.0),
                  color: const Color(0x011f1e4f),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-84.3, -18.4),
            child: SvgPicture.string(
              _svg_5oxfk7,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(314.0, 557.0),
            child: SizedBox(
              width: 314.0,
              height: 90.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 35.0, 253.0, 20.0),
                    size: Size(314.0, 90.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21.0),
                        color: const Color(0x00707070),
                        border: Border.all(
                            width: 1.0, color: const Color(0x00707070)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 314.0, 20.0),
                    size: Size(314.0, 90.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21.0),
                        color: const Color(0x00707070),
                        border: Border.all(
                            width: 1.0, color: const Color(0x00707070)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 70.0, 286.0, 20.0),
                    size: Size(314.0, 90.0),
                    pinLeft: true,
                    pinRight: true,
                    pinBottom: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(21.0),
                        color: const Color(0x00707070),
                        border: Border.all(
                            width: 1.0, color: const Color(0x00707070)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_2uc4no =
    '<svg viewBox="25.4 4.0 1.5 4.4" ><path transform="translate(25.39, 4.05)" d="M 0 0 L 0 4.415999889373779 C 0.8884231448173523 4.041990756988525 1.466153860092163 3.171938896179199 1.466153860092163 2.20799994468689 C 1.466153860092163 1.244060754776001 0.8884231448173523 0.3740092813968658 0 0" fill="#ffffff" fill-opacity="0.4" stroke="none" stroke-width="1" stroke-opacity="0.4" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_7bmegu =
    '<svg viewBox="326.1 3.7 16.9 12.1" ><path transform="translate(326.05, 3.68)" d="M 8.464498519897461 12.14377975463867 C 8.372590065002441 12.14377975463867 8.283143997192383 12.10647487640381 8.21907901763916 12.04143905639648 L 6.004344463348389 9.808818817138672 C 5.93571949005127 9.742193222045898 5.898051261901855 9.649114608764648 5.901010036468506 9.553463935852051 C 5.902997493743896 9.458111763000488 5.944640159606934 9.366843223571777 6.015274047851563 9.30307674407959 C 6.699102878570557 8.724967002868652 7.568911075592041 8.406606674194336 8.464498519897461 8.406606674194336 C 9.360095977783203 8.406606674194336 10.22990417480469 8.724978446960449 10.91372203826904 9.30307674407959 C 10.98436641693115 9.366843223571777 11.02599906921387 9.458101272583008 11.02798557281494 9.553463935852051 C 11.02997303009033 9.649434089660645 10.99193954467773 9.742512702941895 10.92365837097168 9.808818817138672 L 8.709917068481445 12.04143905639648 C 8.645852088928223 12.10647487640381 8.556406021118164 12.14377975463867 8.464498519897461 12.14377975463867 Z M 12.35344886779785 8.226014137268066 C 12.2651834487915 8.226014137268066 12.18083763122559 8.192496299743652 12.1159782409668 8.131621360778809 C 11.11291599273682 7.224995136260986 9.81612491607666 6.725677967071533 8.464498519897461 6.725677967071533 C 7.113798141479492 6.726671695709229 5.818066596984863 7.225977897644043 4.815999031066895 8.131621360778809 C 4.751138687133789 8.192484855651855 4.666793346405029 8.226014137268066 4.57852840423584 8.226014137268066 C 4.486907482147217 8.226014137268066 4.400806427001953 8.190377235412598 4.336090087890625 8.12566089630127 L 3.056333065032959 6.832987308502197 C 2.988061904907227 6.764704704284668 2.951011419296265 6.674375534057617 2.95200514793396 6.578625202178955 C 2.952987670898438 6.481749534606934 2.991804122924805 6.391773223876953 3.061301231384277 6.325257301330566 C 4.533894062042236 4.956010341644287 6.453142166137695 4.201934337615967 8.46549129486084 4.201934337615967 C 10.4774866104126 4.201934337615967 12.39708995819092 4.956010341644287 13.87067604064941 6.325257301330566 C 13.94017314910889 6.392766952514648 13.97898864746094 6.482742786407471 13.97997188568115 6.578625202178955 C 13.98096466064453 6.674375534057617 13.94391441345215 6.764704704284668 13.87564277648926 6.832987308502197 L 12.59588718414307 8.12566089630127 C 12.53115940093994 8.190377235412598 12.44506931304932 8.226014137268066 12.35344886779785 8.226014137268066 Z M 15.30046558380127 5.253162860870361 C 15.21111869812012 5.253162860870361 15.126784324646 5.21858549118042 15.06299591064453 5.155789852142334 C 13.27501201629639 3.45720911026001 10.93161773681641 2.521756887435913 8.464498519897461 2.521756887435913 C 5.996737957000732 2.521756887435913 3.652989864349365 3.45720911026001 1.865006804466248 5.155800819396973 C 1.801228761672974 5.218574523925781 1.716883063316345 5.253162860870361 1.627536416053772 5.253162860870361 C 1.53556215763092 5.253162860870361 1.449461221694946 5.217172622680664 1.385097980499268 5.151815891265869 L 0.1033540442585945 3.860136032104492 C 0.0357230082154274 3.791511297225952 -0.0009739524684846401 3.701524496078491 1.96475248230854e-05 3.606768131256104 C 0.001013247529044747 3.511228084564209 0.03877004608511925 3.421947240829468 0.1063348427414894 3.355387449264526 C 2.366454601287842 1.191624522209167 5.334768772125244 0 8.464498519897461 0 C 11.59458160400391 0 14.56254100799561 1.191635489463806 16.8216667175293 3.355387449264526 C 16.88923263549805 3.421947240829468 16.92698860168457 3.511228084564209 16.92798233032227 3.606768131256104 C 16.92897605895996 3.701524496078491 16.89227867126465 3.791511297225952 16.82464790344238 3.860136032104492 L 15.5429048538208 5.151815891265869 C 15.47854137420654 5.217172622680664 15.39243984222412 5.253162860870361 15.30046558380127 5.253162860870361 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_js46h1 =
    '<svg viewBox="301.8 4.0 18.8 11.8" ><path transform="translate(301.77, 4.05)" d="M 17.66422080993652 11.77614784240723 L 16.56032943725586 11.77614784240723 C 15.95164012908936 11.77614784240723 15.45644092559814 11.2809476852417 15.45644092559814 10.6722583770752 L 15.45644092559814 1.103889465332031 C 15.45644092559814 0.4951991736888885 15.95164012908936 0 16.56032943725586 0 L 17.66422080993652 0 C 18.27291107177734 0 18.76811027526855 0.4951991736888885 18.76811027526855 1.103889465332031 L 18.76811027526855 10.6722583770752 C 18.76811027526855 11.2809476852417 18.27291107177734 11.77614784240723 17.66422080993652 11.77614784240723 Z M 12.51240348815918 11.77614784240723 L 11.40752124786377 11.77614784240723 C 10.79883003234863 11.77614784240723 10.30363082885742 11.2809476852417 10.30363082885742 10.6722583770752 L 10.30363082885742 3.680294275283813 C 10.30363082885742 3.071603775024414 10.79883003234863 2.576404571533203 11.40752124786377 2.576404571533203 L 12.51240348815918 2.576404571533203 C 13.12109470367432 2.576404571533203 13.61629390716553 3.071603775024414 13.61629390716553 3.680294275283813 L 13.61629390716553 10.6722583770752 C 13.61629390716553 11.2809476852417 13.12109470367432 11.77614784240723 12.51240348815918 11.77614784240723 Z M 7.35959529876709 11.77614784240723 L 6.2557053565979 11.77614784240723 C 5.64701509475708 11.77614784240723 5.151815891265869 11.2809476852417 5.151815891265869 10.6722583770752 L 5.151815891265869 6.255705833435059 C 5.151815891265869 5.647015571594238 5.64701509475708 5.151815891265869 6.2557053565979 5.151815891265869 L 7.35959529876709 5.151815891265869 C 7.968826293945313 5.151815891265869 8.464478492736816 5.647015571594238 8.464478492736816 6.255705833435059 L 8.464478492736816 10.6722583770752 C 8.464478492736816 11.2809476852417 7.968826293945313 11.77614784240723 7.35959529876709 11.77614784240723 Z M 2.207779169082642 11.77614784240723 L 1.103889584541321 11.77614784240723 C 0.4951992034912109 11.77614784240723 0 11.2809476852417 0 10.6722583770752 L 0 8.464478492736816 C 0 7.855247020721436 0.4951992034912109 7.35959529876709 1.103889584541321 7.35959529876709 L 2.207779169082642 7.35959529876709 C 2.816469669342041 7.35959529876709 3.311668872833252 7.855247020721436 3.311668872833252 8.464478492736816 L 3.311668872833252 10.6722583770752 C 3.311668872833252 11.2809476852417 2.816469669342041 11.77614784240723 2.207779169082642 11.77614784240723 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_5utw6s =
    '<svg viewBox="5.0 3.9 58.5 58.5" ><path transform="translate(4.97, 3.86)" d="M 0 0 L 58.51200103759766 58.51200103759766" fill="none" fill-opacity="0.16" stroke="#707070" stroke-width="0.25" stroke-opacity="0.16" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hr67jo =
    '<svg viewBox="5.0 3.9 58.5 58.5" ><path transform="translate(4.97, 3.86)" d="M 58.51200103759766 0 L 0 58.51200103759766" fill="none" fill-opacity="0.16" stroke="#707070" stroke-width="0.25" stroke-opacity="0.16" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_26380a =
    '<svg viewBox="13.0 10.4 42.5 46.8" ><defs><linearGradient id="gradient" x1="0.5" y1="0.610926" x2="0.5" y2="0.0"><stop offset="0.0" stop-color="#ff1c1c44"  /><stop offset="1.0" stop-color="#ff5e5ec9"  /></linearGradient></defs><path transform="translate(-682.37, -4575.61)" d="M 737.848876953125 4586 L 698.980224609375 4602.46728515625 L 714.2706298828125 4609.919921875 L 695.3862915039063 4632.7587890625 L 734.2548828125 4616.2919921875 L 718.9645385742188 4608.83935546875 L 737.848876953125 4586 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_5oxfk7 =
    '<svg viewBox="-84.3 -18.4 526.1 930.9" ><defs><linearGradient id="gradient" x1="-0.000004" y1="0.5" x2="1.000003" y2="0.5"><stop offset="0.0" stop-color="#ff33c794"  /><stop offset="1.0" stop-color="#ff007ee7"  /></linearGradient></defs><path transform="matrix(0.139173, -0.990268, 0.990268, 0.139173, -382.84, -993.38)" d="M -931.1544189453125 458.3826904296875 L -985.6124267578125 524.245361328125 L -941.5184326171875 545.7357177734375 L -1053.605590820313 593.2230834960938 L -999.1477661132813 527.3604736328125 L -1043.24169921875 505.8701171875 L -931.1544189453125 458.3826904296875 M -921.1488037109375 450.9281005859375 L -932.310791015625 455.656982421875 L -1044.396728515625 503.1429443359375 L -1050.386840820313 505.6806335449219 L -1044.538696289063 508.5321350097656 L -1003.827758789063 528.3746337890625 L -1055.88720703125 591.33544921875 L -1063.611206054688 600.6778564453125 L -1052.449340820313 595.9488525390625 L -940.3635864257813 548.462890625 L -934.3731689453125 545.9252319335938 L -940.2215576171875 543.0736083984375 L -980.9324951171875 523.231201171875 L -928.8729248046875 460.2704467773438 L -921.1488037109375 450.9281005859375 L -921.1488037109375 450.9281005859375 Z" fill="url(#gradient)" fill-opacity="0.0" stroke="none" stroke-width="1" stroke-opacity="0.0" stroke-miterlimit="10" stroke-linecap="butt" /><defs><linearGradient id="gradient" x1="-0.000004" y1="0.5" x2="1.000003" y2="0.5"><stop offset="0.0" stop-color="#ff33c794"  /><stop offset="1.0" stop-color="#ff007ee7"  /></linearGradient></defs><path transform="matrix(0.139173, -0.990268, 0.990268, 0.139173, -24.84, -224.38)" d="M -931.1544189453125 458.3826904296875 L -985.6124267578125 524.245361328125 L -941.5184326171875 545.7357177734375 L -1053.605590820313 593.2230834960938 L -999.1477661132813 527.3604736328125 L -1043.24169921875 505.8701171875 L -931.1544189453125 458.3826904296875 M -921.1488037109375 450.9281005859375 L -932.310791015625 455.656982421875 L -1044.396728515625 503.1429443359375 L -1050.386840820313 505.6806335449219 L -1044.538696289063 508.5321350097656 L -1003.827758789063 528.3746337890625 L -1055.88720703125 591.33544921875 L -1063.611206054688 600.6778564453125 L -1052.449340820313 595.9488525390625 L -940.3635864257813 548.462890625 L -934.3731689453125 545.9252319335938 L -940.2215576171875 543.0736083984375 L -980.9324951171875 523.231201171875 L -928.8729248046875 460.2704467773438 L -921.1488037109375 450.9281005859375 L -921.1488037109375 450.9281005859375 Z" fill="url(#gradient)" fill-opacity="0.0" stroke="none" stroke-width="1" stroke-opacity="0.0" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
