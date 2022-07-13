import 'dart:async';

import 'package:effah/pages/basic_info/options/no_notifications.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants.dart';

class Message extends StatelessWidget {
  Message({Key? key, required this.progress}) : super(key: key);
  late double progress;

  void _startTimer(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
       Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => NoNotifications(
                    progress: progress,
                  )));
    });
  }

  @override
  Widget build(BuildContext context) {
    _startTimer(context);
    return Scaffold(
        backgroundColor: llightGrey,
        // appBar: AppBar(),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(children: [
              Expanded(flex: 1, child: SizedBox()),
              Expanded(
                flex: 3,
                child: Card(
                  color: white,
                  elevation: 6,
                  shadowColor: black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        // vertical: 10.h,
                        left: 20.w , right: 20.w ,top: 25.h),
                    child: Column(children: [
                      // ImageIcon(
                      Image.asset(
                        "assets/image/messagee.png",
                        width: 295.86.w,
                        // height: 100.h,
                      ),
                      //   color: Color(0xffFF8297),
                      //   // size: 150,
                      // ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0.h),
                        child: Text(
                          "تم الأرسال",
                          style: TextStyle(
                              color: basicPink,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "في انتظار مراجعة الحساب الخاص بك برجاء الانتظار حتي يتم الانتهاء",
                              style: TextStyle(fontSize: 16.sp),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                        child: Text(
                          "يمكنك التواصل من خلال",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.sp),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // ImageIcon(
                                 Image.asset(
                              "assets/icon/icon2.png",
                              width: 46.w,
                              height: 46.h,
                            ),
                            

                            // size: 150,
                            // ),
                            SizedBox(
                              width: 2.w,
                            ),
                            Image.asset(
                              "assets/icon/icon1.png",
                              width: 46.w,
                              height: 46.h,
                            ),
                            // ImageIcon(
                         

                            // size: 150,
                            // ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Text(
                        " * عادة مايتم المراجعة خلال 24 ساعة من فضلك كن صبورا  *",
                        style: TextStyle(color: gmGrey, fontSize: 11.sp),
                      )
                    ]),
                  ),
                ),
              ),
              Expanded(flex: 1, child: SizedBox())
            ])));
  }
}
