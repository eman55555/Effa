import 'package:flutter/material.dart';

class XDiPhoneXXS11Pro50 extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffcfcfc),
      body: Stack(
        children: <Widget>[
          Container(),
          Container(),
          Transform.translate(
            offset: Offset(16.0, 210.0),
            child: Container(
              width: 343.0,
              height: 578.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffcbcbcb)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(24.0, 271.0),
            child: Container(
              width: 4.0,
              height: 499.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: const Color(0xffcbcbcb),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(24.0, 231.0),
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
