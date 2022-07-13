import 'dart:async';

import 'package:effah/constants.dart';
import 'package:effah/modules/app/app_state_model.dart';
import 'package:effah/pages/basic_info/options/details.dart';
import 'package:effah/pages/basic_info/options/message.dart';
import 'package:effah/pages/basic_info/options/no_notifications.dart';
import 'package:effah/pages/basic_info/options/personal_pic.dart';
import 'package:effah/pages/basic_info/options/diseases.dart';
import 'package:effah/pages/basic_info/options/social/Social_status.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../gender.dart';
import '../birthdate_info.dart';
import 'myProfile.dart';
import 'confirm_info.dart';
import 'view_my_profile.dart';

class Options extends StatefulWidget {
  Options({Key? key, required this.progress}) : super(key: key);
  late double progress;

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
//   @override
  bool press = false;

  late bool _loading;

  TextEditingController editingController = TextEditingController();

  //final duplicateItems = List<String>.generate(10000, (i) => "Item $i");

  var items = [];

  // bool visible = false;
  List<String> images = [
    "assets/icon/1.png",
    "assets/icon/2.png",
    "assets/icon/3.png",
    "assets/icon/4.png",
    "assets/icon/5.png",
    "assets/icon/6.png",
    "assets/icon/7.png",
    "assets/icon/8.png"
  ];

  List<myclass> nationalites = [
    myclass("مشاهدة حسابي "),
    myclass("البيانات الشخصية & الجسدية"),
    myclass("الدين&الحالةالأجتماعية"),
    myclass("التعليم & العمل"),
    myclass("العائلة"),
    myclass("وصف عني & عن شريكة حياتي"),
    myclass("الصور الشخصية"),
    myclass("تأكيد بياناتي"),
  ];

  late int tapIndex = nationalites.length;

  void _startTimer() {
    
    Timer(const Duration(seconds: 3), () {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Message(
                    progress: widget.progress,
                  )));
    }
    );
    // Timer(const Duration(seconds: 3), () {
    //   Navigator.pop(context);
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) => MyProfile(
    //                 progress: widget.progress,
    //               )));

    // });
  }

  // void _startTimer2() {
  //   Timer(const Duration(seconds: 3), () {
  //     Navigator.pop(context);
  //     Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //             builder: (context) => MyProfile(
  //                   progress: widget.progress,
  //                 )));
  //     Navigator.pop(context);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // final model = Provider.of<AppStateProvider>(context, listen: false);
    TextEditingController firstName = TextEditingController();
    TextEditingController secondName = TextEditingController();

    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: transparnt,
      // ),
      body: Padding(
        padding: EdgeInsets.only(top: 30.h, bottom: 10.h),
        child: Column(children: [
          SizedBox(
            height: 50.h,
          ),
          Center(
              child: Image.asset(
            "assets/image/logo.png",
            width: 99.13.w,
            // height: 60.h,
            fit: BoxFit.cover,
          )),
          SizedBox(
            height: 30.h,
          ),
          Expanded(
            // flex: 6,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Container(
                alignment: Alignment.centerRight,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: llgrey, width: 1.w),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: white,
                  child: Padding(
                    padding:
                        EdgeInsets.only(bottom: 18.h, left: 18.h, right: 18.h),
                    child: ListView.separated(
                        separatorBuilder: (context, index) => Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  final boxWidth = constraints.constrainWidth();
                                  final dashWidth = 6.0;
                                  final dashHeight = 0.9;
                                  final dashCount =
                                      (boxWidth / (2 * dashWidth)).floor();
                                  return Flex(
                                    children: List.generate(dashCount, (_) {
                                      return SizedBox(
                                        width: dashWidth,
                                        height: dashHeight,
                                        child: const DecoratedBox(
                                          decoration:
                                              BoxDecoration(color: gseparate),
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
                        shrinkWrap: true,
                        itemCount: nationalites.length,
                        itemBuilder: (context, index) {
                          if (editingController.text.isEmpty) {
                            return InkWell(
                              onTap: () {
                                tapIndex = index;
                                // _setIconVisible(visible);
                                // print("before");
                                // print(visible);
                                // visible = !visible;
                                press = !press;
                                // print("after");
                                // print(visible);
                                setState(() {});
                                // press = false;
                                // visible = false;
                                if (index == 2) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SocialStatus(
                                                progress: widget.progress,
                                              )));
                                } else if (index == 0) {
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => MyProfile(
                                  //               progress: progress,
                                  //             )));
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ViewMyProfile(
                                              //progress: progress,
                                              )));
                                } else if (index == 1) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Diseases(
                                                progress: widget.progress,
                                              )));
                                } else if (index == 7) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ConfirmInfo(
                                                progress: widget.progress,
                                              )));
                                } else if (index == 6) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PersonalPic(
                                                progress: widget.progress,
                                              )));
                                } else if (index == 5) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Details()));
                                }
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 8.0.h,
                                  // horizontal: 2.w
                                ),
                                child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Row(
                                    children: [
                                      // ListTile(
                                      //   title: Text('${nationalites[index].word} '),
                                      // ),

                                      ImageIcon(
                                        AssetImage(images[index]),
                                        size: 40,
                                        color: basicPink,
                                      ),
                                      Text(
                                        '${nationalites[index].word} ',
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            color: tapIndex == index &&
                                                    press == false
                                                ? basicPink
                                                : black),
                                      ),
                                      const Spacer(),
                                      // Visibility(
                                      //   visible:
                                      //       tapIndex == index && press == false
                                      //           ? true
                                      //           : false,
                                      //   child: const Icon(
                                      //     Icons.check,
                                      //     size: 30,
                                      //     color: basicPink,
                                      //   ),
                                      // ),

                                       Icon(
                                          Icons.check,
                                          size: 30,
                                          color:tapIndex == index && press == false? basicPink: transparnt,
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          } else if (nationalites[index]
                                  .word
                                  .contains(editingController.text) ||
                              nationalites[index]
                                  .word
                                  .contains(editingController.text)) {
                            return InkWell(
                              onTap: () {
                                tapIndex = index;
                                // _setIconVisible(visible);
                                // print("before");
                                // print(visible);
                                // visible = !visible;
                                press = !press;
                                // print("after");
                                // print(visible);
                                setState(() {});
                                // press = false;
                                // visible = false;
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => ReligionInfo()));
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 8.0.h,
                                ),
                                child: Row(
                                  children: [
                                    // ListTile(
                                    //   title: Text('${nationalites[index].word} '),
                                    // ),
                                    // Visibility(
                                    //   visible:
                                    //       tapIndex == index && press == false
                                    //           ? true
                                    //           : false,
                                    //   child: const Icon(
                                    //     Icons.check,
                                    //     size: 30,
                                    //     color: basicPink,
                                    //   ),
                                    // ),

                                    Icon(
                                          Icons.check,
                                          size: 30,
                                          color:tapIndex == index && press == false? basicPink: transparnt,
                                        ),

                                    const Spacer(),

                                    Text(
                                      '${nationalites[index].word} ',
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color: tapIndex == index &&
                                                  press == false
                                              ? basicPink
                                              : black),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          } else {
                            return Container();
                          }
                        }),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: SizedBox(
              width: double.infinity,
              child: Row(children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                            colors: [mdGrey, basicPink], stops: [0.60, 0.40])),
                    child: TextButton(
                      child: Text('تسجيل الحساب',
                          style: TextStyle(
                            color: white,
                            fontSize: 16.sp,
                            // fontWeight: FontWeight.w500
                          )),
                      style: TextButton.styleFrom(
                        // backgroundColor: const Color(0xffff8297),
                        // primary: Colors.teal,
                        // onSurface: Colors.yellow,
                        // side: BorderSide(color: Colors.teal, width: 2),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      onPressed: () {
                        // _updateProgress(context);
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) =>
                        //             Message()));
                        // WillPopScope(
                        //   onWillPop: ,
                        //////////

//or for men
                        // showModalBottomSheet(
                        //     context: context,
                        //     barrierColor: liGrey.withOpacity(0.8),
                        //     // shape: RoundedRectangleBorder(
                        //     //   borderRadius: BorderRadius.circular(24),
                        //     // ),
                        //     backgroundColor: transparnt,
                        //     //clipBehavior: Clip.antiAliasWithSaveLayer,
                        //     builder: (context) {
                        //       return Padding(
                        //           padding:
                        //               EdgeInsets.symmetric(horizontal: 10.w),
                        //           child: Card(
                        //             color: white,
                        //             elevation: 6,
                        //             shadowColor: black,
                        //             shape: RoundedRectangleBorder(
                        //               borderRadius: BorderRadius.circular(15.0),
                        //             ),
                        //             child: Padding(
                        //               padding: EdgeInsets.symmetric(
                        //                   // vertical: 10.h,
                        //                   horizontal: 20.w),
                        //               child: Column(children: [
                        //                 // ImageIcon(
                        //                 Image.asset(
                        //                   "assets/image/messagee.png",
                        //                   width: 295.86.w,
                        //                   // height: 100.h,
                        //                 ),
                        //                 //   color: Color(0xffFF8297),
                        //                 //   // size: 150,
                        //                 // ),
                        //                 Padding(
                        //                   padding: EdgeInsets.symmetric(
                        //                       vertical: 20.0.h),
                        //                   child: Text(
                        //                     "تم الأرسال",
                        //                     style: TextStyle(
                        //                         color: basicPink,
                        //                         fontSize: 20.sp,
                        //                         fontWeight: FontWeight.bold),
                        //                   ),
                        //                 ),
                        //                 Directionality(
                        //                   textDirection: TextDirection.rtl,
                        //                   child: Padding(
                        //                     padding:
                        //                         EdgeInsets.only(bottom: 10.h),
                        //                     child: Text(
                        //                       "في انتظار مراجعة الحساب الخاص بك برجاء الانتظار حتي يتم الانتهاء",
                        //                       style: TextStyle(fontSize: 16.sp),
                        //                     ),
                        //                   ),
                        //                 ),
                        //                 Padding(
                        //                   padding: EdgeInsets.only(
                        //                       top: 10.h, bottom: 10.h),
                        //                   child: Text(
                        //                     "يمكنك التواصل من خلال",
                        //                     style: TextStyle(
                        //                         fontWeight: FontWeight.bold,
                        //                         fontSize: 16.sp),
                        //                   ),
                        //                 ),
                        //                 Padding(
                        //                   padding: EdgeInsets.only(
                        //                       top: 10.h, bottom: 10.h),
                        //                   child: Row(
                        //                     crossAxisAlignment:
                        //                         CrossAxisAlignment.center,
                        //                     mainAxisAlignment:
                        //                         MainAxisAlignment.center,
                        //                     children: [
                        //                       // ImageIcon(
                        //                       Image.asset(
                        //                         "assets/icon/icon1.png",
                        //                         width: 36.w,
                        //                         height: 36.h,
                        //                       ),

                        //                       // size: 150,
                        //                       // ),
                        //                       SizedBox(
                        //                         width: 2.w,
                        //                       ),
                        //                       // ImageIcon(
                        //                       Image.asset(
                        //                         "assets/icon/icon2.png",
                        //                         width: 36.w,
                        //                         height: 36.h,
                        //                       ),

                        //                       // size: 150,
                        //                       // ),
                        //                     ],
                        //                   ),
                        //                 ),
                        //                 SizedBox(
                        //                   height: 25.h,
                        //                 ),
                        //                 Text(
                        //                   " * عادة مايتم المراجعة خلال 24 ساعة من فضلك كن صبورا  *",
                        //                   style: TextStyle(
                        //                       color: gmGrey, fontSize: 11.sp),
                        //                 )
                        //               ]),
                        //             ),
                        //           ));
                        //     });

                        _startTimer();
                         //_startTimer2();

//for girls

                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => MyProfile(
                        //               progress: widget.progress,
                        //             )));
                      },
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.h,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: mgrey,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const ImageIcon(
                      AssetImage("assets/icon/9.png"),
                      size: 50,
                      color: white,
                    ),
                  ),
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 12.h,
          )
        ]),
      ),
    );
  }

  // void _setIconVisible(bool v) {
  Widget item(i, nationalites) => Row(
        children: [
          // ListTile(
          //   title: Text('${nationalites[i].word} '),
          // ),
          Container(
              child: IconButton(
                  iconSize: 30,
                  hoverColor: basicPink,
                  onPressed: () {},
                  icon: (const Icon(Icons.check))))
        ],
      );
}

class myclass {
  String word;

  myclass(this.word);
}
