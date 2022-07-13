import 'package:flutter/material.dart';
import './XDiPhoneXXS11Pro6.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDiPhoneXXS11Pro25 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffcfcfc),
      body: Stack(
        children: <Widget>[
          Container(),
          Transform.translate(
            offset: Offset(45.9, 25.0),
            child: SizedBox(
              width: 298.0,
              child: Text(
                'البيانات الشخصية & الجسدية',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 22,
                  color: const Color(0xff0d0d0d),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(352.0, 18.0),
            child: Container(
              width: 7.0,
              height: 38.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                color: const Color(0xffff8297),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(16.4, 142.0),
            child: SizedBox(
              width: 343.0,
              child: Text(
                'هل لديك أمراض ؟',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 20,
                  color: const Color(0xff0d0d0d),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(),
          Container(),
          Transform.translate(
            offset: Offset(16.4, 760.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  ease: Curves.easeInOut,
                  duration: 0.4,
                  pageBuilder: () => XDiPhoneXXS11Pro6(),
                ),
              ],
              child: SizedBox(
                width: 343.0,
                child: Text(
                  'الانهاء في وقت اخر',
                  style: TextStyle(
                    fontFamily: 'JF Flat',
                    fontSize: 16,
                    color: const Color(0xff4b4b4b),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(16.0, 270.0),
            child: Container(
              width: 343.0,
              height: 391.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(218.9, 297.0),
            child: SizedBox(
              width: 122.0,
              child: Text(
                'أمراض الكبد والكلي',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 16,
                  color: const Color(0xff4b4b4b),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(264.0, 208.0),
            child: SizedBox(
              width: 51.0,
              child: Text(
                '... بحث',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 16,
                  color: const Color(0xff8f8f8f),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(293.0, 361.0),
            child: SizedBox(
              width: 48.0,
              child: Text(
                'الضغط',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 16,
                  color: const Color(0xffff8297),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(305.0, 425.0),
            child: SizedBox(
              width: 36.0,
              child: Text(
                'القلب',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 16,
                  color: const Color(0xff4b4b4b),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(299.0, 489.0),
            child: SizedBox(
              width: 42.0,
              child: Text(
                'السكر',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 16,
                  color: const Color(0xff4b4b4b),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(302.0, 553.0),
            child: SizedBox(
              width: 39.0,
              child: Text(
                'حروق',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 16,
                  color: const Color(0xff4b4b4b),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(310.0, 617.0),
            child: SizedBox(
              width: 31.0,
              child: Text(
                'الرئه',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 16,
                  color: const Color(0xff4b4b4b),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(30.0, 485.0),
            child: Container(
              width: 24.0,
              height: 24.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff8f8f8f)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(30.0, 613.0),
            child: Container(
              width: 24.0,
              height: 24.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff8f8f8f)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(30.0, 293.0),
            child: Container(
              width: 24.0,
              height: 24.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff8f8f8f)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(30.0, 421.0),
            child: Container(
              width: 24.0,
              height: 24.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff8f8f8f)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(30.0, 549.0),
            child: Container(
              width: 24.0,
              height: 24.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff8f8f8f)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(30.0, 357.0),
            child: SizedBox(
              width: 24.0,
              height: 24.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 24.0, 24.0),
                    size: Size(24.0, 24.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0xffff8297)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(6.0, 5.8, 10.4, 11.8),
                    size: Size(24.0, 24.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_in2q8y,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(27.5, 250.5),
            child: SvgPicture.string(
              _svg_72w4n7,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(327.0, 207.0),
            child: SizedBox(
              width: 18.0,
              height: 18.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 18.0, 18.0),
                    size: Size(18.0, 18.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'svgexport-6 (45)' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 18.0, 18.0),
                          size: Size(18.0, 18.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 18.0, 18.0),
                                size: Size(18.0, 18.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromSize(
                                      bounds:
                                          Rect.fromLTWH(0.0, 0.0, 18.0, 18.0),
                                      size: Size(18.0, 18.0),
                                      pinLeft: true,
                                      pinRight: true,
                                      pinTop: true,
                                      pinBottom: true,
                                      child: SvgPicture.string(
                                        _svg_pz80ft,
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
                    bounds: Rect.fromLTWH(0.0, 0.0, 18.0, 18.0),
                    size: Size(18.0, 18.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffff8297),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
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

const String _svg_in2q8y =
    '<svg viewBox="36.0 362.8 10.4 11.8" ><path transform="translate(-1794.0, -1763.91)" d="M 1830 2134 L 1834.494750976562 2138.49462890625 L 1840.435302734375 2126.72216796875" fill="none" stroke="#ff8297" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_pz80ft =
    '<svg viewBox="0.0 0.0 18.0 18.0" ><path transform="translate(0.0, 0.0)" d="M 17.89014625549316 16.82962036132812 L 12.66127395629883 11.60074806213379 C 13.65303421020508 10.37635898590088 14.25002479553223 8.81977653503418 14.25002479553223 7.125030517578125 C 14.25002479553223 3.196310043334961 11.05371570587158 7.15257556294091e-07 7.124995231628418 7.15257556294091e-07 C 3.196273326873779 7.15257556294091e-07 0 3.196308851242065 0 7.125030040740967 C 0 11.05375194549561 3.196308612823486 14.25006008148193 7.125030040740967 14.25006008148193 C 8.81977653503418 14.25006008148193 10.37635898590088 13.65303611755371 11.60074806213379 12.66131019592285 L 16.82962036132812 17.89018249511719 C 16.97611618041992 18.03660774230957 17.21349334716797 18.03660774230957 17.35998916625977 17.89018249511719 L 17.89018249511719 17.35995483398438 C 18.03660774230957 17.21349334716797 18.03660774230957 16.97604751586914 17.89014625549316 16.82962036132812 Z M 7.125030040740967 12.75004386901855 C 4.023221492767334 12.75004386901855 1.500015735626221 10.22683811187744 1.500015735626221 7.125029563903809 C 1.500015735626221 4.023221015930176 4.023221492767334 1.500015497207642 7.125030040740967 1.500015497207642 C 10.22683811187744 1.500015497207642 12.75004386901855 4.023221015930176 12.75004386901855 7.125029563903809 C 12.75004386901855 10.22683811187744 10.22683811187744 12.75004386901855 7.125030040740967 12.75004386901855 Z" fill="#ff8297" stroke="none" stroke-width="0.04687511920928955" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_72w4n7 =
    '<svg viewBox="27.5 250.5 317.0 1.0" ><path transform="translate(27.5, 250.5)" d="M 317 0 L 0 0" fill="none" stroke="#8f8f8f" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
