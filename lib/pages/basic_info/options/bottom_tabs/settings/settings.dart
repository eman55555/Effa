import 'package:effah/constants.dart';
import 'package:effah/pages/basic_info/options/bottom_tabs/settings/contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'about.dart';
import 'share.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bGround,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 25.0.h, horizontal: 15.w),
          child: Center(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 6,
                      shadowColor: black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(
                            vertical: 30.0.h, horizontal: 15.w),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                ImageIcon(
                                  AssetImage("././assets/icon/nextto.png"),
                                  color: basicPink,
                                  size: 30,
                                ),
                                Text(
                                  "الحساب",
                                  style: TextStyle(fontSize: 18.sp , fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            Row(
                              children: [
                                ImageIcon(
                                  AssetImage("././assets/icon/notify.png"),
                                  color: basicPink,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  "الاشعارات ",
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                                Spacer(),
                                CupertinoSwitch(
                                  onChanged: toggleSwitch,
                                  value: isSwitched,
                                  activeColor: basicPink,
                                  trackColor: grey,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 25.h,
                            ),
                            Padding(
                              padding:
                                   EdgeInsets.symmetric(horizontal: 20.0.w),
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  final boxWidth = constraints.constrainWidth();
                                  final dashWidth = 6.0.h;
                                  final dashHeight = 0.9.w;
                                  final dashCount =
                                      (boxWidth / (2 * dashWidth)).floor();
                                  return Flex(
                                    children: List.generate(dashCount, (_) {
                                      return SizedBox(
                                        width: dashWidth,
                                        height: dashHeight,
                                        child: const DecoratedBox(
                                          decoration:
                                              BoxDecoration(color: mmlGrey),
                                        ),
                                      );
                                    }),
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    direction: Axis.horizontal,
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 25.h,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Share()));
                              },
                              child: Row(
                                children: [
                                  ImageIcon(
                                    AssetImage("././assets/icon/share.png"),
                                    color: basicPink,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "مشاركة التطبيق ",
                                    style: TextStyle(fontSize: 16.sp),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Card(
                      elevation: 6,
                      shadowColor: black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(
                            vertical: 30.0.h, horizontal: 15.w),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                ImageIcon(
                                  AssetImage("././assets/icon/nextto.png"),
                                  color: basicPink,
                                  size: 30,
                                ),
                                Text(
                                  "المزيد",
                                  style: TextStyle(fontSize: 18.sp , fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 35.h,
                            ),
                            GestureDetector(
                              onTap: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Contact()));
                              }),
                              child: Row(
                                children: [
                                  ImageIcon(
                                    AssetImage("././assets/icon/contact.png"),
                                    color: basicPink,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "تواصل معنا ",
                                    style: TextStyle(fontSize: 16.sp),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Padding(
                              padding:
                                   EdgeInsets.symmetric(horizontal: 20.0.w),
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  final boxWidth = constraints.constrainWidth();
                                  final dashWidth = 6.0.w;
                                  final dashHeight = 0.9.h;
                                  final dashCount =
                                      (boxWidth / (2 * dashWidth)).floor();
                                  return Flex(
                                    children: List.generate(dashCount, (_) {
                                      return SizedBox(
                                        width: dashWidth,
                                        height: dashHeight,
                                        child: const DecoratedBox(
                                          decoration:
                                              BoxDecoration(color: mmlGrey),
                                        ),
                                      );
                                    }),
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    direction: Axis.horizontal,
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            GestureDetector(
                              onTap: (() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => About()));
                              }),
                              child: Row(
                                children: [
                                  ImageIcon(
                                    AssetImage("././assets/icon/about.png"),
                                    color: basicPink,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    "عن التطبيق ",
                                    style: TextStyle(fontSize: 16.sp),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Padding(
                              padding:
                                   EdgeInsets.symmetric(horizontal: 20.0.h),
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  final boxWidth = constraints.constrainWidth();
                                  final dashWidth = 6.0.w;
                                  final dashHeight = 0.9.h;
                                  final dashCount =
                                      (boxWidth / (2 * dashWidth)).floor();
                                  return Flex(
                                    children: List.generate(dashCount, (_) {
                                      return SizedBox(
                                        width: dashWidth,
                                        height: dashHeight,
                                        child: const DecoratedBox(
                                          decoration:
                                              BoxDecoration(color: mmlGrey),
                                        ),
                                      );
                                    }),
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    direction: Axis.horizontal,
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              children: [
                                ImageIcon(
                                  AssetImage("././assets/icon/rate.png"),
                                  color: basicPink,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  "تقييم التطبيق ",
                                  style: TextStyle(fontSize: 16.sp),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding:  EdgeInsets.only(top: 38.0.h, bottom: 35.h),
                        child: Text(
                          "كن علي اتصال",
                          style: TextStyle(
                              fontSize: 16.sp),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(bottom: 30.0.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Image(
                            image: AssetImage("././assets/icon/insta.png"),
                            width:48.w ,
                            height: 48.h,
                          ),
                         
                          Padding(
                            padding:
                                 EdgeInsets.symmetric(horizontal: 3.0.w),
                            child: Image(
                              image:
                                  AssetImage("././assets/icon/messenger.png"),
                                  width:48.w ,
                            height: 48.h,
                            ),
                          ),
                           Image(
                            image: AssetImage("././assets/icon/whats.png" ,
                            
                            ),
                            width:48.w ,
                            height: 48.h,
                          ),
                         
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
