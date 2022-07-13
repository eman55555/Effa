import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bGround,
      appBar: AppBar(
        elevation: 7,
        shadowColor: lliGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        backgroundColor: white,
        title: Center(
          child: Text(
            "الاشعارات ",
            style: TextStyle(
                color: black,
                //fontWeight: FontWeight.bold,
                fontSize: 18.sp),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: ImageIcon(
              AssetImage("./././assets/icon/arrow_back.png"),
              color: black,
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
        ],
        leading: Container(),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 30.h, horizontal: 10.w),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(bottom: 15.h),
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: bgrey,
                          width: 2.w,
                        )),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(
                          vertical: 12.h, horizontal: 15.w),
                      child: Text(
                        "هناك اشعار جديد",
                        style: TextStyle(fontSize: 14.sp),
                      ),
                    )),
              ),
              Padding(
                padding:  EdgeInsets.only(bottom: 15.h),
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: bgrey,
                          width: 2.w,
                        )),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(
                          vertical: 12.h, horizontal: 15.w),
                      child: Text(
                        "وريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج مواقع انترنت",
                        style: TextStyle(fontSize: 14.sp),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
