import 'package:flutter/material.dart';

class XDiPhoneXXS11Pro16 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffcfcfc),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset:const Offset(16.0, 78.0),
            child: Container(
              width: 343.0,
              height: 48.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffe5e8ec)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(16.0, 136.0),
            child: Container(
              width: 343.0,
              height: 128.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffe5e8ec)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(250.5, 94.0),
            child: SizedBox(
              width: 94.0,
              child: Text(
                'هناك اشعار جديد',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 14,
                  color: const Color(0xff777777),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(23.0, 148.0),
            child: SizedBox(
              width: 321.0,
              height: 106.0,
              child: Text(
                'وريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج مواقع انترنت',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 14,
                  color: const Color(0xff777777),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}
