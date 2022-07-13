import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:adobe_xd/pinned.dart';

class XDiPhoneXXS11Pro40 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ClipRect(
            child: BackdropFilter(
              filter: ui.ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
              child: Container(
                width: 375.0,
                height: 812.0,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 547.0),
            child: SizedBox(
              width: 375.0,
              height: 265.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 375.0, 265.0),
                    size: Size(375.0, 265.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24.0),
                          topRight: Radius.circular(24.0),
                        ),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, -3),
                            blurRadius: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(126.0, 35.0, 124.0, 22.0),
                    size: Size(375.0, 265.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'الابلاغ عن حساب',
                      style: TextStyle(
                        fontFamily: 'JF Flat',
                        fontSize: 18,
                        color: const Color(0xff0d0d0d),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(99.0, 94.0, 178.0, 40.0),
                    size: Size(375.0, 265.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'هل تريد تأكيد الابلاغ عن حساب \nمحمد مصطفي ',
                      style: TextStyle(
                        fontFamily: 'JF Flat',
                        fontSize: 16,
                        color: const Color(0xff0d0d0d),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(22.0, 731.0),
            child: Container(
              width: 161.0,
              height: 54.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27.0),
                color: const Color(0xffff8297),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(90.5, 750.0),
            child: SizedBox(
              width: 23.0,
              child: Text(
                'نعم',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 14,
                  color: const Color(0xffffffff),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(201.0, 731.0),
            child: Container(
              width: 153.0,
              height: 54.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27.0),
                color: const Color(0xff4b4b4b),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(270.0, 750.0),
            child: SizedBox(
              width: 16.0,
              child: Text(
                'لا',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 16,
                  color: const Color(0xffffffff),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
