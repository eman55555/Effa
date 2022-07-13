import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './XDiPhoneXXS11Pro6.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDiPhoneXXS11Pro31 extends StatelessWidget {
 
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
                ' الديانة ؟',
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
                height: 154.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 343.0, 154.0),
                      size: Size(343.0, 154.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(296.0, 32.0, 29.0, 20.0),
                      size: Size(343.0, 154.0),
                      pinRight: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'مسلم',
                        style: TextStyle(
                          fontFamily: 'JF Flat',
                          fontSize: 16,
                          color: const Color(0xffff8297),
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(280.0, 96.0, 45.0, 19.0),
                      size: Size(343.0, 154.0),
                      pinRight: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Text(
                        'مسيحي',
                        style: TextStyle(
                          fontFamily: 'JF Flat',
                          fontSize: 16,
                          color: const Color(0xff4b4b4b),
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(20.0, 34.5, 15.6, 11.1),
                      size: Size(343.0, 154.0),
                      pinLeft: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_h38qvd,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_h38qvd =
    '<svg viewBox="36.0 363.5 15.6 11.1" ><path transform="translate(-1794.0, -1763.91)" d="M 1830 2134 L 1834.494750976562 2138.49462890625 L 1845.583862304688 2127.405517578125" fill="none" stroke="#ff8297" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" /></svg>';
