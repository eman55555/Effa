import 'dart:async';

import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:effah/pages/basic_info/options/no_notifications.dart';
// import 'package:carousel1/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import 'attemps.dart';

bool show = false;

class Home extends StatefulWidget {
  Home({Key? key, required this.progress}) : super(key: key);
  late double progress;
  @override
  State<Home> createState() => _HomeState();
}

List chips1 = [
  "الطول 172 سم",
  "الوزن 70 كجم",
  "ابيض",
  "اجيد الطبخ",
];

List chips2 = [
  "مسلمة",
  "أحيانا يفوتني الصلاه",
  "لا ادخن",
  "لا اصلي في المسجد",
  "عزباء",
  "ارتدي الحجاب",
  "اصوم رمضان فقط"
];

List chips3 = [
  "ممرضة",
  "مؤهل جامعي",
  "جامعة القاهرة",
];

List chips4 = [
  "الوالد موجود",
  "الوالده موجوده",
];

// List chips5 = ["القراءة", "ممارسة الرياضة", "الكتابة"];

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  //final String imagePath = 'assets/images/';
  // gg(int index) {
  //   // setState(() {
  //   //   chips1.removeAt(index);
  //   // });
  // }
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;
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
  // List<bool> EditingText = [false, false, false, false];
  late TabController _tabcontroller;

  @override
  void initState() {
    super.initState();
    _tabcontroller = new TabController(length: 2, vsync: this);
  }

  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => Container(
            //height: 500,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
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
        )
        .toList();
  }

  // @override
  // void initState() {
  //   super.initState();
  //   controller[0] = TextEditingController(text: chips1[0]);
  // }

  // @override
  // void dispose() {
  //   _editing1Controller.dispose();
  //   // controller[0].dispose();
  //   //  controller[1].dispose();
  //   //   controller[2].dispose();
  //   //    controller[3].dispose();
  //   super.dispose();
  // }

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
      //  resizeToAvoidBottomInset: true,
      backgroundColor: bGround,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            right: 8.w,
            left: 8.w,
            top: 15.h,
          ),
          child: Column(children: [
            Container(
              width: double.infinity,
              child: Card(
                // child: _manWidget(imageSliders , screenSize),
                //or
                elevation: 6.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),

                child: Column(
                  children: [
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/image/report3.png",
                            fit: BoxFit.cover,
                            width: 72.w,
                            height: 72.h,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Text(
                            "أسماء سعيد",
                            style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
                                color: black),
                          ),
                        ],
                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                        children: [
                          ImageIcon(
                            AssetImage("assets/icon/person.png"),
                            size: 40,
                            color: red,
                          ),
                          Text(
                            '24',
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' سنة',
                            style: TextStyle(fontSize: 14.sp, color: black),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          SizedBox(
                              height: 25.h,
                              child: VerticalDivider(color: grey)),
                          ImageIcon(
                            AssetImage("assets/icon/ba.png"),
                            size: 40,
                            color: red,
                          ),
                          Text(
                            'ممرضة',
                            style: TextStyle(fontSize: 14.sp, color: dmGrey),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          SizedBox(
                              height: 25.h,
                              child: VerticalDivider(color: grey)),
                          ImageIcon(
                            AssetImage("assets/icon/stu.png"),
                            size: 40,
                            color: red,
                          ),
                          Text(
                            'مؤهل جامعي',
                            style: TextStyle(fontSize: 14.sp, color: dmGrey),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      child: Divider(
                        thickness: 2.w,
                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageIcon(
                            AssetImage("assets/icon/stat.png"),
                            size: 40,
                            color: red,
                          ),
                          Text(
                            'عزباء',
                            style: TextStyle(fontSize: 14.sp, color: dmGrey),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25.w),
                              child: SizedBox(
                                  height: 25.h,
                                  child: VerticalDivider(color: grey))),
                          ImageIcon(
                            AssetImage("assets/icon/al.png"),
                            size: 40,
                            color: red,
                          ),
                          Text(
                            'مصرية',
                            style: TextStyle(fontSize: 14.sp, color: dmGrey),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                      child: Divider(
                        thickness: 2.w,
                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageIcon(
                            AssetImage("assets/icon/loc.png"),
                            size: 40,
                            color: red,
                          ),
                          Text(
                            'مصر / القاهرة /المعادي',
                            style: TextStyle(fontSize: 14.sp, color: dmGrey),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Image.asset(
                      "assets/image/flower.png",
                      fit: BoxFit.cover,
                    ),
                    // ImageIcon(
                    //   AssetImage("assets/image/flower.png"),
                    //   size: 40,
                    //   // color: const Color(0xffD4016F),
                    // ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: whiteRaduis),
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                // ignore: unnecessary_new
                child: new TabBar(
                  labelColor: red,
                  unselectedLabelColor: black,
                  indicatorColor: red,
                  indicatorWeight: 5.3.w,
                  // indicator: BoxDecoration(
                  //   borderRadius: BorderRadius.horizontal(),
                  // ),
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 8.w),
                  labelStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'JFFlat'),
                  controller: _tabcontroller,
                  tabs: [
                    new Tab(
                      text: 'المراحل',
                    ),
                    new Tab(
                      text: 'المواصفات',
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 20.h,
            // ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 25.0.h,
              ),
              child: Container(
                // height: 1350.h,
                height: double.maxFinite,
                child: new TabBarView(
                  controller: _tabcontroller,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(bottom: 10.0.h, top: 25.h),
                        child: Column(children: [
                          Container(
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
                                  child: Theme(
                                      data: ThemeData(

                                          // primarySwatch: const Color(0xffff8297),
                                          colorScheme: ColorScheme.light(
                                              primary: basicPink)),
                                      child: Stepper(
                                        type: StepperType.vertical,
                                        physics: ScrollPhysics(),
                                        currentStep: _currentStep,
                                        controlsBuilder: (context, _) {
                                          return Container();
                                        },

                                        //  onStepTapped: (step) => tapped(step),
                                        // onStepContinue: null,

                                        // onStepCancel: cancel,
                                        steps: [
                                          Step(
                                              title: new Text(
                                                'وقت المشاهدة',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.sp,
                                                    fontFamily: 'JFFlat'),
                                              ),
                                              content: Text(""),
                                              subtitle: Text(
                                                "20 / يناير /  2022 - 15:00 م",
                                                style: TextStyle(
                                                    color: grey,
                                                    fontSize: 12.sp,
                                                    fontFamily: 'JFFlat'),
                                              ),
                                              isActive: true,
                                              state: StepState.indexed

                                              //  isActive: _currentStep >= 0,
                                              //  state: _currentStep >= 1 ?
                                              //  StepState.complete : StepState.disabled,
                                              ),
                                          Step(
                                              title: new Text(
                                                'وقت طلب ولي الامر',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.sp,
                                                    fontFamily: 'JFFlat'),
                                              ),
                                              content: Text(""),
                                              subtitle: Text(
                                                  "20 / يناير /  2022 - 15:00 م",
                                                  style: TextStyle(
                                                      color: grey,
                                                      fontSize: 12.sp,
                                                      fontFamily: 'JFFlat')),
                                              isActive: true,
                                              state: StepState.indexed

                                              // isActive: _currentStep >= 0,
                                              // state: _currentStep >= 1
                                              //     ? StepState.complete
                                              //     : StepState.disabled,
                                              ),
                                          Step(
                                              title: new Text(
                                                'مشاهدة الطلب',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.sp,
                                                    fontFamily: 'JFFlat'),
                                              ),
                                              content: Text(""),
                                              subtitle: Text(
                                                  "20 / يناير /  2022 - 15:00 م",
                                                  style: TextStyle(
                                                      color: grey,
                                                      fontSize: 12.sp,
                                                      fontFamily: 'JFFlat')),
                                              isActive: true,
                                              state: StepState.indexed

                                              // isActive: _currentStep >= 0,
                                              // state: _currentStep >= 2
                                              //     ? StepState.complete
                                              //     : StepState.disabled,
                                              ),
                                          Step(
                                              title: new Text(
                                                'الموافقة علي الطلب',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.sp,
                                                    fontFamily: 'JFFlat'),
                                              ),
                                              content: Text(""),
                                              subtitle: Text(
                                                  "20 / يناير /  2022 - 15:00 م",
                                                  style: TextStyle(
                                                      color: grey,
                                                      fontSize: 12.sp,
                                                      fontFamily: 'JFFlat')),
                                              isActive: true,
                                              state: StepState.indexed
                                              // isActive: _currentStep >= 0,
                                              // state: _currentStep >= 2
                                              //     ? StepState.complete
                                              //     : StepState.disabled,
                                              ),
                                          Step(
                                              title: new Text(
                                                'مشاهدة الموافقة',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.sp,
                                                    fontFamily: 'JFFlat'),
                                              ),
                                              content: Text(""),
                                              subtitle: Text(
                                                  "20 / يناير /  2022 - 15:00 م",
                                                  style: TextStyle(
                                                      color: grey,
                                                      fontSize: 12.sp,
                                                      fontFamily: 'JFFlat')),
                                              isActive: true,
                                              state: StepState.indexed

                                              // isActive: _currentStep >= 0,
                                              // state: _currentStep >= 2
                                              //     ? StepState.complete
                                              //     : StepState.disabled,
                                              ),
                                        ],
                                      )),
                                ),
                              )),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                              width: double.infinity,
                              child: Card(
                                  // margin: EdgeInsets.only(
                                  //   // top: 20.0,
                                  //   //bottom: 20.0,
                                  // ),
                                  elevation: 6.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                  ),
                                  // color: Colors.white,
                                  child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 20.h, horizontal: 10.w),
                                      child: Container(
                                          child: Card(
                                              // borderOnForeground: true,
                                              // margin: EdgeInsets.only(
                                              //   // top: 20.0,
                                              //   //bottom: 20.0,
                                              // ),
                                              // elevation: 6.0,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(20)),
                                                  side: BorderSide(
                                                    color: lightPink,
                                                    width: 2.w,
                                                    style: BorderStyle.solid,
                                                  )),
                                              child: Column(children: [
                                                Container(
                                                  width: double.infinity,
                                                  // height: 15,
                                                  decoration: BoxDecoration(
                                                    color: whiteRaduis,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topLeft: Radius
                                                                .circular(20),
                                                            topRight:
                                                                Radius.circular(
                                                                    20)),
                                                  ),
                                                  child: Directionality(
                                                      textDirection:
                                                          TextDirection.rtl,
                                                      child: Container(
                                                          height: 56.h,
                                                          // padding:
                                                          //     EdgeInsets.symmetric(
                                                          //         vertical: 10.h),
                                                          child: Row(children: [
                                                            ImageIcon(
                                                              AssetImage(
                                                                "assets/icon/rec.png",
                                                              ),
                                                              color: basicPink,
                                                              // size: 50,
                                                            ),
                                                            SizedBox(
                                                              width: 10.w,
                                                            ),
                                                            Text(
                                                              "ولي الامر",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      18.sp),
                                                            )
                                                          ]))),
                                                ),
                                                Container(
                                                    height: 235.h,
                                                    // decoration: BoxDecoration(
                                                    //     // image: DecorationImage(
                                                    //     //     image: AssetImage(
                                                    //     //         "assets/image/back.png"),
                                                    //     //     fit: BoxFit.cover),
                                                    //     ),
                                                    child: show == true
                                                        ? Directionality(
                                                            textDirection:
                                                                TextDirection
                                                                    .rtl,
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal: 10
                                                                            .w,
                                                                        vertical:
                                                                            8.h),
                                                                child: Column(
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        ImageIcon(
                                                                            AssetImage(
                                                                                "assets/icon/namee.png"),
                                                                            size:
                                                                                40,
                                                                            color:
                                                                                red),
                                                                        SizedBox(
                                                                          width:
                                                                              10.w,
                                                                        ),
                                                                        Text(
                                                                          "أ / محمد عبد الخالق",
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                16.sp,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        ImageIcon(
                                                                            AssetImage(
                                                                                "assets/icon/parents.png"),
                                                                            size:
                                                                                40,
                                                                            color:
                                                                                red),
                                                                        SizedBox(
                                                                          width:
                                                                              10.w,
                                                                        ),
                                                                        Text(
                                                                          "الوالد",
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                16.sp,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        ImageIcon(
                                                                          AssetImage(
                                                                              "assets/icon/phonee.png"),
                                                                          size:
                                                                              40,
                                                                          color:
                                                                              red,
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              10.w,
                                                                        ),
                                                                        Text(
                                                                          "0123456789",
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                16.sp,
                                                                          ),
                                                                        ),
                                                                        Spacer(),
                                                                        Image.asset(
                                                                            "assets/icon/phoni.png"),

                                                                        // color: const Color(0xffD4016F),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                )))
                                                        : _beforePress())
                                              ]))))))
                        ])),
                    // Container(
                    //   // color: Colors.amber,
                    //   // width: 85,
                    //   // height: 100,
                    //   //width: double.infinity,
                    //   child: Card(
                    //     elevation: 6.0,
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(20.0),
                    //     ),
                    //     // color: Colors.red,
                    //     child: Container(
                    //       color: Colors.red,
                    //       child: Column(
                    //         children: [
                    //           Directionality(
                    //             textDirection: TextDirection.rtl,
                    //             child: Stepper(
                    //               // type: stepperType,
                    //               // physics: ScrollPhysics(),
                    //               currentStep: _currentStep,
                    //               //  onStepTapped: (step) => tapped(step),
                    //               // onStepContinue: continued,
                    //               // onStepCancel: cancel,
                    //               steps: [
                    //                 Step(
                    //                   title: new Text('وقت المشاهدة'),
                    //                   content:
                    //                       Text("20 / يناير /  2022 - 15:00 م"),

                    //                   //  isActive: _currentStep >= 0,
                    //                   //  state: _currentStep >= 1 ?
                    //                   //  StepState.complete : StepState.disabled,
                    //                 ),
                    //                 Step(
                    //                   title: new Text('وقت طلب ولي الامر'),
                    //                   content:
                    //                       Text("20 / يناير /  2022 - 15:00 م"),

                    //                   // isActive: _currentStep >= 0,
                    //                   // state: _currentStep >= 1
                    //                   //     ? StepState.complete
                    //                   //     : StepState.disabled,
                    //                 ),
                    //                 Step(
                    //                   title: new Text('مشاهدة الطلب'),
                    //                   content:
                    //                       Text("20 / يناير /  2022 - 15:00 م"),

                    //                   // isActive: _currentStep >= 0,
                    //                   // state: _currentStep >= 2
                    //                   //     ? StepState.complete
                    //                   //     : StepState.disabled,
                    //                 ),
                    //                 Step(
                    //                   title: new Text('الموافقة علي الطلب'),
                    //                   content:
                    //                       Text("20 / يناير /  2022 - 15:00 م"),

                    //                   // isActive: _currentStep >= 0,
                    //                   // state: _currentStep >= 2
                    //                   //     ? StepState.complete
                    //                   //     : StepState.disabled,
                    //                 ),
                    //                 Step(
                    //                   title: new Text('مشاهدة الموافقة'),
                    //                   content:
                    //                       Text("20 / يناير /  2022 - 15:00 م"),

                    //                   // isActive: _currentStep >= 0,
                    //                   // state: _currentStep >= 2
                    //                   //     ? StepState.complete
                    //                   //     : StepState.disabled,
                    //                 ),
                    //               ],
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    _specifications(),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  // switchStepsType() {
  //   setState(() => stepperType == StepperType.vertical
  //       ? stepperType = StepperType.horizontal
  //       : stepperType = StepperType.vertical);
  // }

  // tapped(int step) {
  //   setState(() => _currentStep = step);
  // }

  // continued() {
  //   _currentStep < 2 ? setState(() => _currentStep += 1) : null;
  // }

  // cancel() {
  //   _currentStep > 0 ? setState(() => _currentStep -= 1) : null;
  // }
  Widget _beforePress() => Stack(
        children: [
          // Text("data")
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 100.w,
              height: 48.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: red),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("././assets/icon/filter_icon.png"),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "150",
                    style: TextStyle(
                        color: white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          // SizedBox(
          //   height: 30,
          // ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: Container(
                  width: 148.w,
                  //height: 44.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: basicPink,
                      ),
                      color: white),
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5.h,
                      ),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              show = true;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(
                                    "././assets/icon/filter_icon.png"),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "اظهر مقابل 35",
                                style: TextStyle(
                                  color: black,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ))),
                ),
              )),
        ],
      );
  Widget _specifications() => Padding(
        padding: EdgeInsets.only(bottom: 5.0.h, top: 25.h),
        child: Column(children: [
          Container(
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
                    padding: EdgeInsets.symmetric(
                        horizontal: 18.0.w, vertical: 15.h),
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
                                fontSize: 16.sp, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                      Wrap(
                        spacing: 6.0.w,
                        runSpacing: 6.0.h,
                        children:
                            List<Widget>.generate(chips1.length, (int index) {
                          return _editTitleChip(chips1[index]
                              // chips1[index],
                              // _editingchip11Controller,
                              // gg(index),
                              );
                        }),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 25.0.h),
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
                                fontSize: 16.sp, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                      Wrap(
                        spacing: 6.0.w,
                        runSpacing: 6.0.h,
                        children:
                            List<Widget>.generate(chips2.length, (int index) {
                          return _editTitleChip(chips2[index]
                              // chips1[index],
                              // _editingchip11Controller,
                              // gg(index),
                              );
                        }),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 25.0.h),
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
                                fontSize: 16.sp, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                      Wrap(
                        spacing: 6.0.w,
                        runSpacing: 6.0.h,
                        children:
                            List<Widget>.generate(chips3.length, (int index) {
                          return _editTitleChip(chips3[index]
                              // chips1[index],
                              // _editingchip11Controller,
                              // gg(index),
                              );
                        }),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 25.0.h),
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
                                fontSize: 16.sp, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                      Wrap(
                        spacing: 6.0.w,
                        runSpacing: 6.0.h,
                        children:
                            List<Widget>.generate(chips4.length, (int index) {
                          return _editTitleChip(chips4[index]
                              // chips1[index],
                              // _editingchip11Controller,
                              // gg(index),
                              );
                        }),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 25.0.h),
                        child: _separtor(),
                      ),

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
                      //   spacing: 6.0.w,
                      //   runSpacing: 6.0.h,
                      //   children:
                      //       List<Widget>.generate(chips5.length, (int index) {
                      //     return _editTitleChip(chips5[index]
                      //         // chips1[index],
                      //         // _editingchip11Controller,
                      //         // gg(index),
                      //         );
                      //   }),
                      // ),
                      //  _editTitleChip(_editingchip1Controller),

                      // Padding(
                      //   padding: EdgeInsets.symmetric(vertical: 25.0.h),
                      //   child: _separtor(),
                      // ),

                      Row(
                        children: [
                          ImageIcon(
                            AssetImage("assets/icon/6.png"),
                            size: 40,
                            color: basicPink,
                          ),
                          Text(
                            'وصف عنى & عن شريكة حياتى',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                      SizedBox(
                        height: 20.h,
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0.h),
                        child: _editTitleTextField("وصف عني  ",
                            " الاعتماد علي النفس و الأجتهاد في العمل أحب المرح والضحك والوضوح في الامور بشكل عام "),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0.h),
                        child: _editTitleTextField("وصف عن شريك حياتي",
                            "حالتها الأجتماعيه (أعزب) أن يكون يخشي الله قبل الناس متفاهم ذي طاقة إيجابية ومجتهد وصبور"),
                      ),
                    ]),
                  ),
                ),
              )),
          SizedBox(
            height: 20.h,
          ),

          Container(
            width: 132.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: black,
                border: Border.all(
                  color: transparnt,
                  width: 2.w,
                )),
            child: TextButton(
                onPressed: () {},
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 3.0.h, horizontal: 5.w),
                    child: Text(
                      "الغاء الطلب",
                      style: TextStyle(
                        color: white,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                )),
          ),

          // _buildManButton()
        ]),
      );

  Widget _editTitleTextField(String txt1, String txt2) {
    return Container(
      child: InputDecorator(
        decoration: InputDecoration(
          labelText: txt1,
          labelStyle: TextStyle(
            color: basicPink,
            fontSize: 12.sp,
            //fontFamily: "verdana_regular",
            fontWeight: FontWeight.bold,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            // borderSide: BorderSide(
            //     color: Colors.red, width: 7,
            //     style: BorderStyle.solid
            //     )
          ),
        ),
        child: Text(txt2,
            style: TextStyle(
              color: black,
              fontSize: 14.sp,
            )),
      ),
    );
  }

  Widget _editTitleChip(String txt) {
    return Chip(
      backgroundColor: white,
      side: BorderSide(
        color: lightPink,
      ),
      label: Text(txt,
          style: TextStyle(
            color: black,
            fontSize: 14.sp,
            //  fontFamily: 'JFFlat'
          )),
      // deleteIcon: Icon(Icons.close),
      // onDeleted: () {
      //   setState(() {
      //     if (index == 0) {
      //       chips1.removeAt(0);
      //       //  _editingController.clear();
      //     }
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
      //   });
      // },
    );
    //   ),
    // );
  }

  //buttons for man
  Widget _buildManButton() => Column(children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                child: Container(
                  // width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(27),
                      color: basicPink,
                      border: Border.all(
                        color: transparnt,
                        width: 2,
                      )),
                  child: TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            barrierColor: liGrey.withOpacity(0.8),
                            // shape: RoundedRectangleBorder(
                            //   borderRadius: BorderRadius.circular(24),
                            // ),
                            backgroundColor: transparnt,
                            //clipBehavior: Clip.antiAliasWithSaveLayer,
                            builder: (context) {
                              return Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Card(
                                    color: white,
                                    elevation: 6,
                                    shadowColor: black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(27.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Column(
                                        // crossAxisAlignment:
                                        //     CrossAxisAlignment.center,
                                        // mainAxisAlignment:
                                        //     MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 30.0),
                                            child: Image.asset(
                                                "assets/image/j.png"),
                                            // color: Color(0xffFF8297),
                                            // size: 50,
                                          ),
                                          Text(
                                            "تأكيد خصم 150 نقطة لاظهار رقم ولي الامر",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(35),
                                                          color: basicPink,
                                                          border: Border.all(
                                                            color: transparnt,
                                                            width: 2,
                                                          )),
                                                      child: TextButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Text("نعم",
                                                            style: TextStyle(
                                                                color: white,
                                                                fontSize: 20)),
                                                      )),
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Expanded(
                                                  child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(35),
                                                          color: midGrey,
                                                          border: Border.all(
                                                            color: transparnt,
                                                            width: 2,
                                                          )),
                                                      child: TextButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Text(
                                                          "لا",
                                                          style: TextStyle(
                                                              color: white,
                                                              fontSize: 20),
                                                        ),
                                                      )),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                              );
                            });
                      },
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 3.0, horizontal: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ImageIcon(
                                  AssetImage("assets/icon/love.png"),
                                  size: 40,
                                  color: white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "قبول",
                                  style: TextStyle(
                                      color: white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ]),
                        ),
                      )),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Container(
                    // width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(27),
                        color: midGrey,
                        border: Border.all(
                          color: transparnt,
                          width: 2,
                        )),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NoNotifications(
                                      progress: widget.progress)));
                        },
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 3.0, horizontal: 5),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ImageIcon(
                                    AssetImage("assets/icon/x.png"),
                                    size: 40,
                                    color: white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "01:50",
                                    style: TextStyle(
                                        color: white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ]),
                          ),
                        ))),
              ),
            ]),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,

              barrierColor: liGrey.withOpacity(0.8),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(28),
                ),
              ),
              // clipBehavior: Clip.antiAliasWithSaveLayer,
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: Text(
                          "الابلاغ عن حساب",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          "هل تريد تأكيد الابلاغ عن حساب حسام وليد",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: basicPink,
                                        borderRadius: BorderRadius.circular(40),
                                        border: Border.all(
                                          color: transparnt,
                                          width: 2,
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "نعم",
                                            style: TextStyle(
                                                color: white, fontSize: 23),
                                          )),
                                    ))),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: midGrey,
                                      borderRadius: BorderRadius.circular(40),
                                      border: Border.all(
                                        color: transparnt,
                                        width: 2,
                                      )),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: TextButton(

                                        // style: ButtonStyle(

                                        // ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          "لا",
                                          style: TextStyle(
                                              color: white, fontSize: 23),
                                        )),
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          },
          child: Text(
            "الابلاغ عن الحساب",
            style:
                TextStyle(fontSize: 20, decoration: TextDecoration.underline),
          ),
        ),
      ]);

  //woman

  //Man Widget
  // Widget _manWidget(var imageSliders, var screenSize) => Container(
  //       width: double.infinity,
  //       child: Card(
  //         // margin: EdgeInsets.only(
  //         //   // top: 20.0,
  //         //   //bottom: 20.0,
  //         // ),
  //         elevation: 6.0,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(15.0),
  //         ),
  //         color: white,
  //         child: Padding(
  //           padding: const EdgeInsets.only(bottom: 20.0),
  //           child: Column(children: [
  //             Stack(
  //               children: [
  //                 Container(
  //                   width: double.infinity,
  //                   // height: 200,
  //                   child: CarouselSlider(
  //                     items: imageSliders,
  //                     options: CarouselOptions(
  //                         // height: double.infinity,
  //                         //autoPlay: true,
  //                         enlargeCenterPage: true,
  //                         // scrollDirection: Axis.vertical,
  //                         //  enlargeCenterPage: true,
  //                         //aspectRatio: 18 / 8,
  //                         onPageChanged: (index, reason) {
  //                           setState(() {
  //                             _current = index;
  //                           });
  //                         }),
  //                     carouselController: _controller,
  //                   ),
  //                 ),
  //                 AspectRatio(
  //                   aspectRatio: 18 / 8,
  //                   child: Directionality(
  //                     textDirection: TextDirection.rtl,
  //                     child: Padding(
  //                       padding: const EdgeInsets.only(right: 20),
  //                       child: Column(
  //                           mainAxisAlignment: MainAxisAlignment.end,
  //                           children: [
  //                             Row(children: [
  //                               Text(
  //                                 // places[_current],
  //                                 "حسام وليد",
  //                                 style: TextStyle(
  //                                   letterSpacing: 8,
  //                                   decoration: TextDecoration.none,
  //                                   fontWeight: FontWeight.bold,
  //                                   fontFamily: 'Electrolize',
  //                                   fontSize: screenSize.width / 25,
  //                                   color: white,
  //                                 ),
  //                               ),
  //                               Text(
  //                                 ",",
  //                                 style: TextStyle(
  //                                   letterSpacing: 8,
  //                                   fontWeight: FontWeight.bold,
  //                                   decoration: TextDecoration.none,
  //                                   fontFamily: 'Electrolize',
  //                                   fontSize: screenSize.width / 25,
  //                                   color: white,
  //                                 ),
  //                               ),
  //                               Text(
  //                                 "24",
  //                                 style: TextStyle(
  //                                   letterSpacing: 8,
  //                                   decoration: TextDecoration.none,
  //                                   fontFamily: 'Electrolize',
  //                                   fontWeight: FontWeight.bold,
  //                                   fontSize: screenSize.width / 25,
  //                                   color: white,
  //                                 ),
  //                               ),
  //                             ]),
  //                             Row(children: [
  //                               ImageIcon(
  //                                 AssetImage("assets/icon/stat.png"),
  //                                 size: 40,
  //                                 color: red,
  //                               ),
  //                               Text(
  //                                 'أعزب',
  //                                 style: TextStyle(fontSize: 20, color: white),
  //                               ),

  //                               SizedBox(
  //                                 width: 20,
  //                               ),

  //                               ImageIcon(
  //                                 AssetImage("assets/icon/al.png"),
  //                                 size: 40,
  //                                 color: red,
  //                               ),
  //                               Text(
  //                                 'مصري',
  //                                 style: TextStyle(fontSize: 20, color: white),
  //                               ),

  //                               SizedBox(
  //                                 width: 20,
  //                               ),

  //                               ImageIcon(
  //                                 AssetImage("assets/icon/ba.png"),
  //                                 size: 40,
  //                                 color: red,
  //                               ),
  //                               Text(
  //                                 'مدرس',
  //                                 style: TextStyle(fontSize: 20, color: white),
  //                               ),

  //                               SizedBox(
  //                                 width: 20,
  //                               ),
  //                               //  Text(
  //                               //   // places[_current],
  //                               //   "nnnnnn",
  //                               //   style: TextStyle(
  //                               //     letterSpacing: 8,
  //                               //     decoration: TextDecoration.none,
  //                               //     fontFamily: 'Electrolize',
  //                               //     fontSize: screenSize.width / 25,
  //                               //     color: Colors.white,
  //                               //   ),
  //                               // ),
  //                             ]),
  //                           ]),
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //             Directionality(
  //               textDirection: TextDirection.rtl,
  //               child: Row(children: [
  //                 ImageIcon(
  //                   AssetImage("assets/icon/stu.png"),
  //                   size: 40,
  //                   color: red,
  //                 ),
  //                 Text(
  //                   'مؤهل جامعي',
  //                   style: TextStyle(fontSize: 20, color: black),
  //                 ),
  //                 SizedBox(
  //                   width: 20,
  //                 ),
  //                 Padding(
  //                   padding: const EdgeInsets.symmetric(vertical: 8.0),
  //                   child: Text(
  //                     '|',
  //                     style: TextStyle(fontSize: 20, color: grey),
  //                   ),
  //                 ),
  //                 ImageIcon(
  //                   AssetImage("assets/icon/loc.png"),
  //                   size: 40,
  //                   color: red,
  //                 ),
  //                 Text(
  //                   'مصر',
  //                   style: TextStyle(fontSize: 20, color: black),
  //                 ),
  //                 Text(
  //                   '/',
  //                   style: TextStyle(fontSize: 20, color: black),
  //                 ),
  //                 Text(
  //                   'القاهرة',
  //                   style: TextStyle(fontSize: 20, color: black),
  //                 ),
  //                 Text(
  //                   '/',
  //                   style: TextStyle(fontSize: 20, color: black),
  //                 ),
  //                 Text(
  //                   'المعادي',
  //                   style: TextStyle(fontSize: 20, color: black),
  //                 ),
  //               ]),
  //             )
  //           ]),
  //         ),
  //       ),
  //     );

  Widget _separtor() => LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final boxWidth = constraints.constrainWidth();
          final dashWidth = 6.0.w;
          final dashHeight = 0.9.h;
          final dashCount = (boxWidth / (2 * dashWidth)).floor();
          return Flex(
            children: List.generate(dashCount, (_) {
              return SizedBox(
                width: dashWidth,
                height: dashHeight,
                child: const DecoratedBox(
                  decoration: BoxDecoration(color: mgrey),
                ),
              );
            }),
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            direction: Axis.horizontal,
          );
        },
      );
}
