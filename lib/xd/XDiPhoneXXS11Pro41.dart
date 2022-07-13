import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDiPhoneXXS11Pro41 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffcfcfc),
      body: Stack(
        children: <Widget>[
          Container(),
          Transform.translate(
            offset: Offset(16.0, 80.0),
            child: Container(
              width: 343.0,
              height: 104.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 2.0, color: const Color(0xffffffff)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(16.0, 198.0),
            child: Container(
              width: 343.0,
              height: 104.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 2.0, color: const Color(0xffffffff)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(16.0, 316.0),
            child: Container(
              width: 343.0,
              height: 104.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 2.0, color: const Color(0xffffffff)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(165.0, 119.0),
            child: SizedBox(
              width: 97.0,
              child: Text(
                'أسماء سعيد',
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
            offset: Offset(176.0, 237.0),
            child: SizedBox(
              width: 86.0,
              child: Text(
                'حسام وليد',
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
            offset: Offset(177.0, 355.0),
            child: SizedBox(
              width: 85.0,
              child: Text(
                'احمد معتز',
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
            offset: Offset(30.0, 123.0),
            child: SizedBox(
              width: 39.0,
              child: Text(
                'ابلاغ',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 18,
                  color: const Color(0xff0d0d0d),
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(30.0, 241.0),
            child: SizedBox(
              width: 39.0,
              child: Text(
                'ابلاغ',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 18,
                  color: const Color(0xff0d0d0d),
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(30.0, 359.0),
            child: SizedBox(
              width: 39.0,
              child: Text(
                'ابلاغ',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 18,
                  color: const Color(0xff0d0d0d),
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(275.0, 92.0),
            child: SizedBox(
              width: 72.0,
              height: 72.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 72.0, 72.0),
                    size: Size(72.0, 72.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: const Color(0xfffcfcfc),
                      ),
                    ),
                  ),
                  Container(),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(275.0, 210.0),
            child: Container(
              width: 72.0,
              height: 72.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(275.0, 328.0),
            child: Container(
              width: 72.0,
              height: 72.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
