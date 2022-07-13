import 'dart:io';

import 'package:effah/modules/app/app_state_model.dart';
import 'package:effah/pages/basic_info/gender.dart';
import 'package:effah/pages/basic_info/options/bottom_tabs/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../../constants.dart';

// ignore: use_key_in_widget_constructors
class Report extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final model = Provider.of<AppStateProvider>(context, listen: false);
    // List<String> images = [
    //   "assets/image/report1.png",
    //   "assets/image/report2.png",
    //   "assets/image/report3.png"
    // ];

    List names = [
      {'name': "اسماء سعيد", 'img': "assets/image/report3.png"},
      {'name': "حسام وليد", 'img': "assets/image/report2.png"},
      {'name': "احمد معتز", 'img': "assets/image/report1.png"}
    ];
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
              "الابلاغ عن الحسابات",
              style: TextStyle(color: black, fontSize: 18.sp),
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
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 12.w),
          child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0.h),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.0.h),
                          child: Row(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  names[index]['img'],
                                  width: 72.w,
                                  height: 72.h,
                                ),
                              ),
                              Expanded(
                                  child: Text(
                                names[index]['name'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.sp),
                              )),
                              Expanded(child: SizedBox()),
                              GestureDetector(
                                onTap: () {

                                  showModalBottomSheet(
                                    
                                    context: context,

                                    barrierColor: llightGrey.withOpacity(0.8),

                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(28),
                                      ),
                                    ),
                                    // clipBehavior: Clip.antiAliasWithSaveLayer,
                                    builder: (context) {
                                      return Container(
                                        height: 290.h,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 15.h,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 30.h , ),
                                              child: Text(
                                                "الابلاغ عن حساب",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18.sp),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 20.h),
                                              child: Text(
                                                "هل تريد تأكيد الابلاغ عن حساب حسام وليد",
                                                style:
                                                    TextStyle(fontSize: 16.sp),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 20.h,
                                                  left: 22.w , right: 22.w),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                      child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                                  color:
                                                                      basicPink,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              40),
                                                                  border: Border
                                                                      .all(
                                                                    color:
                                                                        transparnt,
                                                                    width: 2.w,
                                                                  )),
                                                          child: Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    vertical:
                                                                        5.h),
                                                            child: TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Text(
                                                                  "نعم",
                                                                  style: TextStyle(
                                                                      color:
                                                                          white,
                                                                      fontSize:
                                                                          16.sp),
                                                                )),
                                                          ))),
                                                  SizedBox(
                                                    width: 20.w,
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                                color: midGrey,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            40),
                                                                border:
                                                                    Border.all(
                                                                  color:
                                                                      transparnt,
                                                                  width: 2.w,
                                                                )),
                                                        child: Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical:
                                                                      5.h),
                                                          child: TextButton(

                                                              // style: ButtonStyle(

                                                              // ),
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              child: Text(
                                                                "لا",
                                                                style: TextStyle(
                                                                    color:
                                                                        white,
                                                                    fontSize:
                                                                        16.sp),
                                                              )),
                                                        )),
                                                  )
                                                ],
                                              ),
                                            ),

                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Text(
                                  "ابلاغ",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                              SizedBox(
                                width: 15.w,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
        ));
  }
}
