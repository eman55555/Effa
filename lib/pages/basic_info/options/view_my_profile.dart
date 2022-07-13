import 'dart:async';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:effah/constants.dart';
import 'package:effah/pages/basic_info/options/fullscreen_image.dart';
// import 'package:carousel1/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewMyProfile extends StatefulWidget {
  const ViewMyProfile({Key? key}) : super(key: key);

  @override
  State<ViewMyProfile> createState() => _ViewMyProfileState();
}

List chips1 = [
  "الطول 172 سم",
  "الوزن 70 كجم",
  "ابيض",
  "اجيد السباحة",
];

final List<TextEditingController> controller1 = [
  for (int i = 0; i < chips1.length; i++) TextEditingController(text: chips1[i])
];

List chips2 = [
  "مسلم",
  "أحيانا يفوتني الصلاه",
  "لا ادخن",
  // "لا اصلي في المسجد",
  "عزباء",
  // "ملتزم",
  // "اصوم رمضان فقط"
];

final List<TextEditingController> controller2 = [
  for (int i = 0; i < chips2.length; i++) TextEditingController(text: chips2[i])
];

List chips3 = [
  "مدرس",
  "مؤهل جامعي",
  "جامعة القاهرة",
];

final List<TextEditingController> controller3 = [
  for (int i = 0; i < chips3.length; i++) TextEditingController(text: chips3[i])
];

List chips4 = [
  "الوالد موجود",
  "الوالده موجوده",
];

final List<TextEditingController> controller4 = [
  for (int i = 0; i < chips4.length; i++) TextEditingController(text: chips4[i])
];

// List chips5 = ["القراءة", "ممارسة الرياضة", "الكتابة"];

// final List<TextEditingController> controller5 = [
//   for (int i = 0; i < chips5.length; i++) TextEditingController(text: chips5[i])
// ];

class _ViewMyProfileState extends State<ViewMyProfile> {
  //final String imagePath = 'assets/images/';
  // gg(int index) {
  //   // setState(() {
  //   //   chips1.removeAt(index);
  //   // });
  // }

  final CarouselController _controller = CarouselController();

  List _isHovering = [false, false, false, false, false, false, false];
  //List _isSelected = [true, false, false, false, false, false, false];
  bool _isSelected = true;
  int _current = 0;

  final List<String> images = [
    "assets/image/personal_pic.png",
    "assets/image/personal_pic.png",
    "assets/image/personal_pic.png",
    "assets/image/personal_pic.png",
  ];
  List<bool> EditingText = [false, false, false, false];

  bool _isEditingText = false;

  TextEditingController _editing1Controller = TextEditingController(
      text:
          "حالتها الأجتماعيه (عازباء) أن تكوت يخشي الله قبل الناس متفاهمه ذي طاقة إيجابية ومجتهده وصبوره");
  TextEditingController _editing2Controller = TextEditingController(
      text:
          " الاعتماد علي النفس و الأجتهاد في العمل أحب المرح والضحك والوضوح في الامور بشكل عام ");

  // TextEditingController _editingchips11Controller =
  //     TextEditingController(text: "الطول 172 سم");

  // TextEditingController _editingchips12Controller =
  //     TextEditingController(text: "الوزن 70 كجم");

  // TextEditingController _editingchips13Controller =
  //     TextEditingController(text: "ابيض");

  // TextEditingController _editingchips14Controller =
  //     new TextEditingController(text: "اجيد السباحة");

  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => FittedBox(
            fit: BoxFit.cover,
            child: InkWell(
              onTap: () {
                print("object");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FullScreenImage(
                              images: images,
                            )));
              },
              child: Container(
                // height: 500,
                // width: 342.w,
                height: 398.h,
                width: 342.w,
                //width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      element,

                      // fit: BoxFit.cover,
                    ),
                  ),
                ),
                // child: ClipRRect(
                //   // borderRadius: BorderRadius.circular(20.0),
                //   child: Image.asset(
                //     element,
                //     fit: BoxFit.cover,
                //   ),
                // ),
              ),
            ),
          ),
        )
        .toList();
  }

  // @override
  // void initState() {
  //   super.initState();
  //   controller[0] = TextEditingController(text: chips1[0]);
  // }

  @override
  void dispose() {
    _editing1Controller.dispose();
    // controller[0].dispose();
    //  controller[1].dispose();
    //   controller[2].dispose();
    //    controller[3].dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);

    // TextEditingController tcontroller =
    //     TextEditingController(text: "Festive Leave");
    // bool _isEnable = false;

//These are initialize at the top

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: bGround,
      appBar: AppBar(
        elevation: 7,
      //  systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.orange),
        shadowColor: lliGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        backgroundColor: white,
        title: Center(
          child: Text(
            "مشاهدة حسابي",
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
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(right: 10.w, left: 10.w, top: 9.h, bottom: 30.h),
          child: Column(children: [
            Container(
              width: 343.w,
              height: 450.h,
              // width: double.infinity,
              child: Card(
                // margin: EdgeInsets.only(
                //   // top: 20.0,
                //   //bottom: 20.0,
                // ),
                elevation: 6.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                color: white,
                child: Column(children: [
                  Stack(
                    children: [
                      Container(
                        //  width: double.infinity,
                        //width: 342.w,
                        // height: 200,
                        child: CarouselSlider(
                          items: imageSliders,
                          options: CarouselOptions(
                              // width: 342.w,
                              height: 391.h,
                              //height: double.infinity,
                              //autoPlay: true,
                              enlargeCenterPage: true,
                              scrollDirection: Axis.vertical,
                              //  enlargeCenterPage: true,
                              // aspectRatio: 18 / 8,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _current = index;
                                });
                              }),
                          carouselController: _controller,
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 9.2 / 8,
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Spacer(),
                                Row(children: [
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    // places[_current],
                                    "حسام وليد",
                                    style: TextStyle(
                                      // letterSpacing: 8,
                                      //decoration: TextDecoration.none,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.sp,
                                      // fontSize: screenSize.width / 25,
                                      color: white,
                                    ),
                                  ),
                                  Text(
                                    ",",
                                    style: TextStyle(
                                      // letterSpacing: 8,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.sp,
                                      // decoration: TextDecoration.none,
                                      // fontFamily: 'Electrolize',
                                      // fontSize: screenSize.width / 25,
                                      color: white,
                                    ),
                                  ),
                                  Text(
                                    "24",
                                    style: TextStyle(
                                      // letterSpacing: 8,
                                      fontSize: 25.sp,
                                      fontWeight: FontWeight.bold,
                                      // fontSize: screenSize.width / 25,
                                      color: white,
                                    ),
                                  ),
                                ]),
                                Row(children: [
                                  ImageIcon(
                                    AssetImage("assets/icon/stat.png"),
                                    size: 40,
                                    color: red,
                                  ),
                                  Text(
                                    'أعزب',
                                    style: TextStyle(
                                        fontSize: 14.sp, color: white),
                                  ),

                                  SizedBox(
                                    width: 20.w,
                                  ),

                                  ImageIcon(
                                    AssetImage("assets/icon/al.png"),
                                    size: 40,
                                    color: red,
                                  ),
                                  Text(
                                    'مصري',
                                    style: TextStyle(
                                        fontSize: 14.sp, color: white),
                                  ),

                                  SizedBox(
                                    width: 20.w,
                                  ),

                                  ImageIcon(
                                    AssetImage("assets/icon/ba.png"),
                                    size: 40,
                                    color: red,
                                  ),
                                  Text(
                                    'مدرس',
                                    style: TextStyle(
                                        fontSize: 14.sp, color: white),
                                  ),

                                  // SizedBox(
                                  //   width: 20,
                                  // ),
                                  //  Text(
                                  //   // places[_current],
                                  //   "nnnnnn",
                                  //   style: TextStyle(
                                  //     letterSpacing: 8,
                                  //     decoration: TextDecoration.none,
                                  //     fontFamily: 'Electrolize',
                                  //     fontSize: screenSize.width / 25,
                                  //     color: Colors.white,
                                  //   ),
                                  // ),
                                ]),
                              ]),
                        ),
                      ),
                    ],
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(children: [
                      ImageIcon(
                        AssetImage("assets/icon/stu.png"),
                        size: 40,
                        color: red,
                      ),
                      Text(
                        'مؤهل جامعي',
                        style: TextStyle(fontSize: 14.sp, color: black),
                      ),
                      SizedBox(
                        width: 20.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          '|',
                          style: TextStyle(fontSize: 14.sp, color: grey),
                        ),
                      ),
                      ImageIcon(
                        AssetImage("assets/icon/loc.png"),
                        size: 40,
                        color: red,
                      ),
                      Text(
                        'مصر',
                        style: TextStyle(fontSize: 14.sp, color: black),
                      ),
                      Text(
                        '/',
                        style: TextStyle(fontSize: 14.sp, color: black),
                      ),
                      Text(
                        'القاهرة',
                        style: TextStyle(fontSize: 14.sp, color: black),
                      ),
                      Text(
                        '/',
                        style: TextStyle(fontSize: 14.sp, color: black),
                      ),
                      Text(
                        'المعادي',
                        style: TextStyle(fontSize: 14.sp, color: black),
                      ),
                    ]),
                  )
                ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0.h),
              child: Container(
                  width: double.infinity,
                  child: Card(
                    // margin: EdgeInsets.only(
                    //   // top: 20.0,
                    //   //bottom: 20.0,
                    // ),
                    elevation: 6.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: white,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Padding(
                        padding: EdgeInsets.only(right: 18.0.w),
                        child: Column(children: [
                          Row(
                            children: [
                              ImageIcon(
                                AssetImage("assets/icon/2.png"),
                                size: 40,
                                color: basicPink,
                              ),
                              Text(
                                'البيانات الشخصية & الجسدية',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),

                          Wrap(
                            spacing: 6.0,
                            runSpacing: 6.0,
                            children: List<Widget>.generate(chips1.length,
                                (int index) {
                              return _editTitleChip(
                                  controller1[index], chips1, index
                                  // chips1[index],
                                  // _editingchip11Controller,
                                  // gg(index),
                                  );
                            }),
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 25.0.h, horizontal: 10.w),
                            child: _separtor(),
                          ),

                          Row(
                            children: [
                              ImageIcon(
                                AssetImage("assets/icon/3.png"),
                                size: 40,
                                color: basicPink,
                              ),
                              Text(
                                'الدين & الحالة الإجتماعية ',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),

                          Wrap(
                            spacing: 3.0,
                            runSpacing: 3.0,
                            children: List<Widget>.generate(chips2.length,
                                (int index) {
                              return _editTitleChip(
                                  controller2[index], chips2, index
                                  // chips1[index],
                                  // _editingchip11Controller,
                                  // gg(index),
                                  );
                            }),
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 25.0.h, horizontal: 10.w),
                            child: _separtor(),
                          ),

                          Row(
                            children: [
                              ImageIcon(
                                AssetImage("assets/icon/4.png"),
                                size: 40,
                                color: basicPink,
                              ),
                              Text(
                                'التعليم & العمل',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),

                          Wrap(
                            spacing: 6.0,
                            runSpacing: 6.0,
                            children: List<Widget>.generate(chips3.length,
                                (int index) {
                              return _editTitleChip(
                                  controller3[index], chips3, index
                                  // chips1[index],
                                  // _editingchip11Controller,
                                  // gg(index),
                                  );
                            }),
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 25.0.h, horizontal: 10.w),
                            child: _separtor(),
                          ),

                          Row(
                            children: [
                              ImageIcon(
                                AssetImage("assets/icon/5.png"),
                                size: 40,
                                color: basicPink,
                              ),
                              Text(
                                'العائله',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),

                          Wrap(
                            spacing: 6.0,
                            runSpacing: 6.0,
                            children: List<Widget>.generate(chips4.length,
                                (int index) {
                              return _editTitleChip(
                                  controller4[index], chips4, index
                                  // chips1[index],
                                  // _editingchip11Controller,
                                  // gg(index),
                                  );
                            }),
                          ),

                          // Padding(
                          //   padding: EdgeInsets.symmetric(
                          //       vertical: 25.0.h, horizontal: 10.w),
                          //   child: _separtor(),
                          // ),

                          // Row(
                          //   children: [
                          //     ImageIcon(
                          //       AssetImage("assets/icon/interests.png"),
                          //       size: 40,
                          //       color: basicPink,
                          //     ),
                          //     Text(
                          //       'اهتماماتي',
                          //       style: TextStyle(
                          //         fontSize: 16.sp,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          //                               Row( // REPLACE THIS WITH Wrap
                          //   children: List.generate(
                          //     chips1.length,
                          //     (i) {
                          //       return  _editTitleChip( _editing1Controller);
                          //     },
                          //   ),
                          // ),

                          // Wrap(
                          //   spacing: 6.0,
                          //   runSpacing: 6.0,
                          //   children: List<Widget>.generate(chips5.length,
                          //       (int index) {
                          //     return _editTitleChip(
                          //         controller5[index], chips5, index
                          //         // chips1[index],
                          //         // _editingchip11Controller,
                          //         // gg(index),
                          //         );
                          //   }),
                          // ),
                          //  _editTitleChip(_editingchip1Controller),

                          Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 25.0.h, horizontal: 10.w),
                              child: _separtor()),

                          Row(
                            children: [
                              ImageIcon(
                                AssetImage("assets/icon/6.png"),
                                size: 40,
                                color: basicPink,
                              ),
                              Text(
                                'وصف عنى',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 8.h,
                          ),

                          Padding(
                            padding: EdgeInsets.only(
                                top: 20.0.h, bottom: 20.0.h, left: 15.w),
                            child: _editTitleTextField(
                                "وصف عني", _editing1Controller),
                          ),

                          Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 25.0.h, horizontal: 10.w),
                              child: _separtor()),

                          Row(
                            children: [
                              ImageIcon(
                                AssetImage("assets/icon/6.png"),
                                size: 40,
                                color: basicPink,
                              ),
                              Text(
                                'وصف عن شريكة حياتى',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 8.h,
                          ),

                          Padding(
                            padding: EdgeInsets.only(
                                top: 20.0.h, bottom: 30.0.h, left: 15.w),
                            child: _editTitleTextField(
                                "وصف عن شريك حياتي", _editing2Controller),
                          ),
                        ]),
                      ),
                    ),
                  )),
            ),
            Container(
              width: 157.w,
              // height: 84.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27),
                  color: mmGrey,
                  border: Border.all(
                    color: transparnt,
                    width: 2,
                  )),
              child: TextButton(
                  onPressed: () {},
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage("././assets/icon/editt.png"),
                          width: 30.w,
                          color: white,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "تعديل الحساب",
                          style: TextStyle(
                              color: white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )),
            ),
          ]),
        ),
      ),
    );
  }

  Widget _editTitleTextField(
      String txt, TextEditingController _editingController) {
    if (_isEditingText)
      return Center(
        child: TextFormField(
          onFieldSubmitted: (newValue) {
            setState(() {
              _editingController.text = newValue;
              _isEditingText = false;
            });
          },
          autofocus: true,
          controller: _editingController,
        ),
      );
    return InkWell(
      onTap: () {
        setState(() {
          _isEditingText = true;
        });
      },
      child: Container(
        child: InputDecorator(
          decoration: InputDecoration(
            labelText: txt,
            labelStyle: TextStyle(
              color: basicPink,
              fontSize: 12.sp,
              //fontFamily: "verdana_regular",
              // fontWeight: FontWeight.bold,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              // borderSide: BorderSide(
              //     color: Colors.red, width: 7,
              //     style: BorderStyle.solid
              //     )
            ),
          ),
          child: Text(_editingController.text,
              style: TextStyle(
                color: black,
                fontSize: 14.0.sp,
              )),
        ),
      ),
    );
  }

  Widget _editTitleChip(
      // String txt,
      TextEditingController _editingController,
      List chips1,
      int index) {
    if (EditingText[index])
      return Center(
        child: TextFormField(
          onFieldSubmitted: (newValue) {
            setState(() {
              // _editingController.text += newValue;
              EditingText[index] = false;
            });
          },
          autofocus: true,
          controller: _editingController,
        ),
      );
    return InkWell(
      onTap: () {
        setState(() {
          EditingText[index] = true;
        });
      },
      child: Chip(
        backgroundColor: white,
        side: BorderSide(
            color: lightPink, width: 1.7.w, style: BorderStyle.solid),
        label: Text(_editingController.text,
            style: TextStyle(
              color: black,
              fontSize: 14.0.sp,
            )),
        deleteIcon: Icon(Icons.close),
        onDeleted: () {
          setState(() {
            if (index == 0) {
              chips1.removeAt(0);
              //  _editingController.clear();
            }
            // else if (index == 1){
            //   chips1.removeAt(1);
            // _editingController.clear();
            // }else if (index == 2){
            //   chips1.removeAt(2);
            // _editingController.clear();
            // }else if (index == 3){
            //   chips1.removeAt(3);
            // _editingController.clear();
            // }
          });
        },
      ),
    );
    //   ),
    // );
  }

  Widget _separtor() => LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final boxWidth = constraints.constrainWidth();
          final dashWidth = 6.0;
          final dashHeight = 0.9;
          final dashCount = (boxWidth / (2 * dashWidth)).floor();
          return Flex(
            children: List.generate(dashCount, (_) {
              return SizedBox(
                width: dashWidth,
                height: dashHeight,
                child: const DecoratedBox(
                  decoration: BoxDecoration(color: gseparate),
                ),
              );
            }),
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
          );
        },
      );
}
