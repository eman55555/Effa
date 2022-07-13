import 'package:flutter/material.dart';
import './XDiPhoneXXS11Pro19.dart';
import 'package:adobe_xd/page_link.dart';
import './XDiPhoneXXS11Pro38.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDiPhoneXXS11Pro18 extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffcfcfc),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(16.4, 142.0),
            child: SizedBox(
              width: 343.0,
              child: Text(
                'ما هو نوع المستخدم',
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
            offset: Offset(192.0, 202.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  ease: Curves.easeInOut,
                  duration: 0.4,
                  pageBuilder: () => XDiPhoneXXS11Pro19(),
                ),
              ],
              child: Container(
                width: 167.0,
                height: 127.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0xffffffff),
                  border:
                      Border.all(width: 1.0, color: const Color(0xffff8297)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x29000000),
                      offset: Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(16.0, 202.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDiPhoneXXS11Pro38(),
                ),
              ],
              child: Container(
                width: 167.0,
                height: 127.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0xfffcfcfc),
                  border:
                      Border.all(width: 1.0, color: const Color(0xff8f8f8f)),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(263.0, 294.0),
            child: SizedBox(
              width: 28.0,
              child: Text(
                'ذكر',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 16,
                  color: const Color(0xff0d0d0d),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(83.0, 294.0),
            child: SizedBox(
              width: 34.0,
              child: Text(
                'انثي',
                style: TextStyle(
                  fontFamily: 'JF Flat',
                  fontSize: 16,
                  color: const Color(0xff0d0d0d),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(245.0, 218.0),
            child: SizedBox(
              width: 64.0,
              height: 64.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 64.0, 64.0),
                    size: Size(64.0, 64.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child:
                        // Adobe XD layer: 'svgexport-10 (3)' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(42.2, -1.8, 7.6, 39.6),
                          size: Size(64.0, 64.0),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Transform.rotate(
                            angle: 3.927,
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xff4bbaed),
                              ),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 22.9, 41.1, 41.1),
                          size: Size(64.0, 64.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_5dw4me,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.4, 22.9, 36.7, 41.1),
                          size: Size(64.0, 64.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 7.6, 14.6, 25.9),
                                size: Size(36.7, 41.1),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: SvgPicture.string(
                                  _svg_yig19d,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(14.6, 0.0, 22.1, 41.1),
                                size: Size(36.7, 41.1),
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: SvgPicture.string(
                                  _svg_vvgm26,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(48.6, 2.4, 12.9, 12.9),
                          size: Size(64.0, 64.0),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_8r0v3a,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(42.6, 0.0, 21.4, 21.4),
                          size: Size(64.0, 64.0),
                          pinRight: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_l7np8a,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 64.0, 64.0),
                    size: Size(64.0, 64.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(68.0, 218.0),
            child: SizedBox(
              width: 64.0,
              height: 64.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(11.7, 0.0, 40.7, 64.0),
                    size: Size(64.0, 64.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'svgexport-6 (50)' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(9.7, 36.9, 21.2, 27.1),
                          size: Size(40.7, 64.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_mfb2bg,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(16.6, 36.9, 7.5, 7.2),
                          size: Size(40.7, 64.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_6wca21,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 40.7, 40.7),
                          size: Size(40.7, 64.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_cc97n8,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(3.7, 0.0, 37.0, 40.7),
                          size: Size(40.7, 64.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 7.5, 14.7, 25.7),
                                size: Size(37.0, 40.7),
                                pinLeft: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: SvgPicture.string(
                                  _svg_edpnid,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(14.7, 0.0, 22.2, 40.7),
                                size: Size(37.0, 40.7),
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child: SvgPicture.string(
                                  _svg_sm4tam,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 64.0, 64.0),
                    size: Size(64.0, 64.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                ],
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
          Container(),
        ],
      ),
    );
  }
}

const String _svg_yig19d =
    '<svg viewBox="4.4 30.5 14.6 25.9" ><path  d="M 18.92287445068359 30.61325073242188 C 18.39525032043457 30.54787635803223 17.85787391662598 30.51375007629395 17.3125 30.51375007629395 C 10.15875053405762 30.51375007629395 4.359375 36.3129997253418 4.359375 43.46687316894531 C 4.359375 50.62062454223633 10.15875053405762 56.41999816894531 17.3125 56.41999816894531 C 17.85787582397461 56.41999816894531 18.3951244354248 56.38587188720703 18.92287445068359 56.32037353515625 C 12.52899932861328 55.52750015258789 7.580124855041504 50.07524871826172 7.580124855041504 43.46687316894531 C 7.580124855041504 36.85837554931641 12.52912521362305 31.40612411499023 18.92287445068359 30.61325073242188 Z" fill="#4bbaed" stroke="none" stroke-width="0.125" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vvgm26 =
    '<svg viewBox="18.9 22.9 22.1 41.1" ><path  d="M 20.53325080871582 22.93350028991699 C 19.99125099182129 22.93350028991699 19.45437622070312 22.95487594604492 18.92300033569336 22.99612617492676 C 29.51049995422363 23.81750106811523 37.84587478637695 32.66850280761719 37.84587478637695 43.46675109863281 C 37.84587478637695 54.26499938964844 29.51049995422363 63.11600112915039 18.92300033569336 63.9373779296875 C 19.45437622070312 63.9786262512207 19.99137496948242 64 20.53325080871582 64 C 31.87350082397461 64 41.06650161743164 54.80699920654297 41.06650161743164 43.46675109863281 C 41.06650161743164 32.12662506103516 31.87337493896484 22.93350028991699 20.53325080871582 22.93350028991699 Z" fill="#4bbaed" stroke="none" stroke-width="0.125" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5dw4me =
    '<svg viewBox="0.0 22.9 41.1 41.1" ><path  d="M 20.53325080871582 22.93350028991699 C 9.192999839782715 22.93350028991699 0 32.12662506103516 0 43.46675109863281 C 0 54.80699920654297 9.192999839782715 64 20.53325080871582 64 C 31.87350082397461 64 41.06650161743164 54.80699920654297 41.06650161743164 43.46675109863281 C 41.06650161743164 32.12662506103516 31.87337493896484 22.93350028991699 20.53325080871582 22.93350028991699 Z M 20.53325080871582 56.41987609863281 C 13.37950134277344 56.41987609863281 7.58012580871582 50.62062454223633 7.58012580871582 43.46675109863281 C 7.58012580871582 36.3129997253418 13.37950134277344 30.51362609863281 20.53325080871582 30.51362609863281 C 27.68712615966797 30.51362609863281 33.48637390136719 36.3128776550293 33.48637390136719 43.46675109863281 C 33.48625183105469 50.62062454223633 27.6870002746582 56.41987609863281 20.53325080871582 56.41987609863281 Z" fill="#93d6f4" stroke="none" stroke-width="0.125" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8r0v3a =
    '<svg viewBox="48.6 2.4 12.9 12.9" ><path  d="M 61.56275177001953 7.797124862670898 L 61.56275177001953 5.614375114440918 L 58.38562774658203 2.437250137329102 L 56.20275115966797 2.437250137329102 L 48.62262725830078 10.01737499237061 L 52.96187591552734 10.01737499237061 C 53.52562713623047 10.01737499237061 53.98262786865234 10.47437477111816 53.98262786865234 11.03812503814697 L 53.98262786865234 15.37737464904785 L 61.56275177001953 7.797124862670898 Z" fill="#40a2e2" stroke="none" stroke-width="0.125" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_l7np8a =
    '<svg viewBox="42.6 0.0 21.4 21.4" ><path  d="M 56.41987609863281 0 L 43.58362579345703 0 C 43.01987457275391 0 42.56287384033203 0.4569999873638153 42.56287384033203 1.020750045776367 L 42.56287384033203 6.559374809265137 C 42.56287384033203 7.123125076293945 43.01987457275391 7.580124855041504 43.58362579345703 7.580124855041504 L 55.39912414550781 7.580124855041504 C 55.96287536621094 7.580124855041504 56.41987609863281 8.037124633789062 56.41987609863281 8.600874900817871 L 56.41987609863281 20.41637420654297 C 56.41987609863281 20.98012351989746 56.87687683105469 21.43712425231934 57.44062805175781 21.43712425231934 L 62.97925186157227 21.43712425231934 C 63.54300308227539 21.43712425231934 64 20.98012351989746 64 20.41637420654297 L 64 7.580124855041504 L 64 1.020750045776367 C 64 0.4569999873638153 63.54299926757812 0 62.97925186157227 0 L 56.41987609863281 0 Z" fill="#93d6f4" stroke="none" stroke-width="0.125" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mfb2bg =
    '<svg viewBox="21.4 36.9 21.2 27.1" ><path  d="M 41.59096145629883 49.74542999267578 L 36.78348159790039 49.74542999267578 C 36.21535873413086 49.74542999267578 35.75485992431641 49.28493118286133 35.75485992431641 48.7168083190918 L 35.75485992431641 36.87360382080078 L 28.2446403503418 36.87360382080078 L 28.2446403503418 48.7168083190918 C 28.2446403503418 49.28493118286133 27.78414154052734 49.74542999267578 27.21601867675781 49.74542999267578 L 22.40853881835938 49.74542999267578 C 21.84041595458984 49.74542999267578 21.37991714477539 50.20592498779297 21.37991714477539 50.77405166625977 L 21.37991714477539 56.22715377807617 C 21.37991714477539 56.7952766418457 21.84041595458984 57.25577545166016 22.40853881835938 57.25577545166016 L 27.21601867675781 57.25577545166016 C 27.78414154052734 57.25577545166016 28.2446403503418 57.71627044677734 28.2446403503418 58.28439712524414 L 28.2446403503418 62.97137832641602 C 28.2446403503418 63.53950119018555 28.70513916015625 64 29.27326202392578 64 L 34.72636413574219 64 C 35.29449081420898 64 35.75498580932617 63.53950119018555 35.75498580932617 62.97137832641602 L 35.75498580932617 58.28439712524414 C 35.75498580932617 57.71627044677734 36.21548461914062 57.25577545166016 36.78360748291016 57.25577545166016 L 41.59108734130859 57.25577545166016 C 42.15921401977539 57.25577545166016 42.61970901489258 56.7952766418457 42.61970901489258 56.22715377807617 L 42.61970901489258 50.77405166625977 C 42.61958312988281 50.20592498779297 42.15908432006836 49.74542999267578 41.59096145629883 49.74542999267578 Z" fill="#ef687e" stroke="none" stroke-width="0.1249995082616806" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6wca21 =
    '<svg viewBox="28.2 36.9 7.5 7.2" ><path  d="M 28.2448902130127 36.87372970581055 L 28.2448902130127 43.75645446777344 C 29.46800994873047 43.95108032226562 30.72200584411621 44.05358123779297 31.99987411499023 44.05358123779297 C 33.27787017822266 44.05358123779297 34.53186416625977 43.95120620727539 35.75498580932617 43.75645446777344 L 35.75498580932617 36.87372970581055 L 28.2448902130127 36.87372970581055 Z" fill="#e63952" stroke="none" stroke-width="0.1249995082616806" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_edpnid =
    '<svg viewBox="15.4 7.5 14.7 25.7" ><path  d="M 30.10275650024414 7.650094985961914 C 29.4835090637207 7.558345317840576 28.85013580322266 7.510220527648926 28.20551490783691 7.510220527648926 C 21.1177921295166 7.510220527648926 15.37194061279297 13.25607204437256 15.37194061279297 20.34379577636719 C 15.37194061279297 27.4315185546875 21.11779022216797 33.17737197875977 28.20551490783691 33.17737197875977 C 28.85026168823242 33.17737197875977 29.48363494873047 33.12924575805664 30.10275650024414 33.03749847412109 C 23.91478157043457 32.12037658691406 19.16642379760742 26.78689765930176 19.16642379760742 20.34379768371582 C 19.16642379760742 13.9006986618042 23.9146556854248 8.567091941833496 30.10275650024414 7.650094985961914 Z" fill="#f28598" stroke="none" stroke-width="0.1249995082616806" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sm4tam =
    '<svg viewBox="30.1 0.0 22.2 40.7" ><path  d="M 31.99987411499023 0 C 31.36000061035156 0 30.72738075256348 0.03099987842142582 30.10263252258301 0.08874964714050293 C 40.44846343994141 1.045745849609375 48.54918670654297 9.748086929321289 48.54918670654297 20.34379577636719 C 48.54918670654297 30.93950462341309 40.44858932495117 39.64184188842773 30.10275650024414 40.59883880615234 C 30.72750473022461 40.65658950805664 31.36012649536133 40.68758773803711 32 40.68758773803711 C 43.23558044433594 40.68758773803711 52.34391784667969 31.57937431335449 52.34391784667969 20.34379196166992 C 52.34391784667969 9.108209609985352 43.23545455932617 0 31.99987411499023 0 Z" fill="#f28598" stroke="none" stroke-width="0.1249995082616806" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cc97n8 =
    '<svg viewBox="11.7 0.0 40.7 40.7" ><path  d="M 31.99987411499023 0 C 20.76441764831543 0 11.65607929229736 9.108213424682617 11.65607929229736 20.34379577636719 C 11.65607929229736 31.57937812805176 20.76441764831543 40.68771362304688 31.99987411499023 40.68771362304688 C 43.23532867431641 40.68771362304688 52.34379577636719 31.57950019836426 52.34379577636719 20.34391784667969 C 52.34379577636719 9.108335494995117 43.23545455932617 0 31.99987411499023 0 Z M 31.99987411499023 33.17749404907227 C 24.91215324401855 33.17749404907227 19.16629791259766 27.431640625 19.16629791259766 20.34391784667969 C 19.16629791259766 13.25619411468506 24.91215324401855 7.510220527648926 31.99987411499023 7.510220527648926 C 39.08759689331055 7.510220527648926 44.83345031738281 13.25607204437256 44.83345031738281 20.34379577636719 C 44.83345031738281 27.4315185546875 39.08772277832031 33.17749404907227 31.99987411499023 33.17749404907227 Z" fill="#f996b1" stroke="none" stroke-width="0.1249995082616806" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
