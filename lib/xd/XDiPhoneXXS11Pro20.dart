import 'package:flutter/material.dart';
import './XDiPhoneXXS11Pro21.dart';
import 'package:adobe_xd/page_link.dart';
import './XDComponent121.dart';

class XDiPhoneXXS11Pro20 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffcfcfc),
      body: Stack(
        children: <Widget>[
          Container(),
          Transform.translate(
            offset: Offset(16.4, 142.0),
            child: SizedBox(
              width: 343.0,
              child: Text(
                'تاريخ ميلادك ؟',
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
          Transform.translate(
            offset: Offset(170.2, 25.0),
            child: SizedBox(
              width: 174.0,
              child: Text(
                'البيانات الأساسية',
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
            offset: Offset(16.0, 214.0),
            child: SizedBox(
              width: 343.0,
              height: 392.0,
              child: XDComponent121(),
            ),
          ),
        ],
      ),
    );
  }
}
