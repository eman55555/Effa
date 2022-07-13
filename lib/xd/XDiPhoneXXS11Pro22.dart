import 'package:flutter/material.dart';
import './XDiPhoneXXS11Pro24.dart';
import 'package:adobe_xd/page_link.dart';
import './XDiPhoneXXS11Pro6.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDiPhoneXXS11Pro22 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffcfcfc),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(16.0, 210.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  ease: Curves.easeInOut,
                  duration: 0.4,
                  pageBuilder: () => XDiPhoneXXS11Pro24(),
                ),
              ],
              child: Container(
                width: 343.0,
                height: 212.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: const Color(0xffffffff),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(303.0, 237.0),
            child: SizedBox(
              width: 36.0,
              child: Text(
                'اعزب',
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
            offset: Offset(306.0, 302.0),
            child: SizedBox(
              width: 33.0,
              child: Text(
                'ارمل',
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
            offset: Offset(302.0, 367.0),
            child: SizedBox(
              width: 37.0,
              child: Text(
                'مطلق',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 16,
                  color: const Color(0xff4b4b4b),
                ),
                textAlign: TextAlign.right,
              ),
            ),
          ),
          Container(),
          Transform.translate(
            offset: Offset(85.5, 25.0),
            child: SizedBox(
              width: 259.0,
              child: Text(
                'الدين & الحالة الإجتماعية ',
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
                'ما هي حالتك الاجتماعية ؟',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 20,
                  color: const Color(0xff0d0d0d),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(36.0, 304.5),
            child: SvgPicture.string(
              _svg_98zjia,
              allowDrawingOutsideViewBox: true,
            ),
          ),
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
        ],
      ),
    );
  }
}

const String _svg_98zjia =
    '<svg viewBox="36.0 304.5 15.6 11.1" ><path transform="translate(-1794.0, -1822.91)" d="M 1830 2134 L 1834.494750976562 2138.49462890625 L 1845.583862304688 2127.405517578125" fill="none" stroke="#ff8297" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
