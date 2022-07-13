import 'package:flutter/material.dart';
import './XDiPhoneXXS11Pro18.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDiPhoneXXS11Pro4 extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffcfcfc),
      body: Stack(
        children: <Widget>[
          Container(),
          Transform.translate(
            offset: Offset(113.4, 44.0),
            child: SizedBox(
              width: 161.0,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'JF Flat',
                    fontSize: 24,
                    color: const Color(0xff0d0d0d),
                  ),
                  children: [
                    TextSpan(
                      text: 'اهلا بك في ',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: 'عفة',
                      style: TextStyle(
                        color: const Color(0xffff8297),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                textHeightBehavior:
                    TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(131.6, 89.0),
            child: SizedBox(
              width: 114.0,
              child: Text(
                'تطبيق الزواج الصادق',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 14,
                  color: const Color(0xff4b4b4b),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(190.6, 661.0),
            child: SizedBox(
              width: 136.0,
              child: Text(
                'لقد قرأت الشروط والاحكام',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 14,
                  color: const Color(0xff0d0d0d),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(16.0, 141.0),
            child: Container(
              width: 343.0,
              height: 498.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffcbcbcb)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(24.0, 202.0),
            child: Container(
              width: 4.0,
              height: 416.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: const Color(0xffcbcbcb),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(217.2, 159.0),
            child: SizedBox(
              width: 130.0,
              child: Text(
                'الشروط والاحكام',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 18,
                  color: const Color(0xff0d0d0d),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(335.0, 657.0),
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
                        color: const Color(0xffff8297),
                        border: Border.all(
                            width: 1.0, color: const Color(0xffff8297)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.2, 7.4, 13.5, 9.2),
                    size: Size(24.0, 24.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_g1s1hl,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(335.0, 657.0),
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
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(24.0, 202.0),
            child: Container(
              width: 4.0,
              height: 135.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: const Color(0xffff8297),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_g1s1hl =
    '<svg viewBox="340.2 664.4 13.5 9.2" ><path transform="translate(-1335.94, 2.94)" d="M 1676.178833007812 666.3489990234375 L 1680.49267578125 670.6627807617188 L 1689.707641601562 661.44775390625" fill="none" stroke="#ffffff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
