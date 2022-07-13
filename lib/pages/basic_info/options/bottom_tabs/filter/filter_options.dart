import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';
import '../../notifications.dart';
import 'filter.dart';
import '../my_account/my_account.dart';
import '../settings/settings.dart';

class FilterOptions extends StatefulWidget {
  const FilterOptions({Key? key}) : super(key: key);

  @override
  State<FilterOptions> createState() => _FilterOptionsState();
}

class _FilterOptionsState extends State<FilterOptions> {
  RangeValues _currentRangeValues = const RangeValues(0, 100);

  // static String _valueToString(double value) {
  //   return value.toStringAsFixed(0);
  // }
  int _selectedIndex = 0;
  String? selectedValue = null;
  // bool res = false;
  // final _dropdownFormKey = GlobalKey<FormState>();
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("USA"), value: "USA"),
      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
      DropdownMenuItem(child: Text("England"), value: "England"),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    const List<Widget> _pages = <Widget>[
      Settings(),
      MyAccount(),
      Filter(),
      Icon(
        Icons.chat,
        size: 150,
      ),
    ];

    return Scaffold(
      backgroundColor: bGround,
      appBar: AppBar(
        elevation: 4,
        foregroundColor: black,
        backgroundColor: white,
        actions: [
          Image.asset(
            "assets/image/logo.png",
            width: 66.09.w,
          ),
        ],
        leading: IconButton(
          icon: ImageIcon(
            AssetImage("assets/icon/notif.png"),
          ),
          iconSize: 40,
          //color: Color.fromARGB(255, 180, 175, 175),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Notifications()));
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(top: 10.h),
        child: PhysicalModel(
          color: grey,
          elevation: 30,
          shadowColor: white,
          child: Container(
            color: light,
            child: Padding(
              padding: EdgeInsets.all(20.0.h),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 44.h,
                      child: TextButton(
                          child: Text('تأكيد',
                              style: TextStyle(
                                color: white,
                                fontSize: 16.sp,
                              )),
                          style: TextButton.styleFrom(
                            backgroundColor: basicPink,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                          onPressed: () {
                            //model.completAccount();
                            // Navigator.of(context).push(
                            //     MaterialPageRoute(builder: (context) => BasicInfo()));
                          }),
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 44.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: mlliGrey),
                        //color: bGround,
                      ),
                      child: Center(
                          child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Row(children: [
                          Text(
                            "عدد النتائج اكثر من ",
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            "100 ",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: basicPink),
                          ),
                          Text(
                            " مماثلة",
                            style: TextStyle(
                              fontSize: 16.sp,
                            ),
                          ),
                        ]),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      //  Directionality(
      //   textDirection: TextDirection.rtl,
      //   child: BottomNavigationBar(
      //     unselectedIconTheme: IconThemeData(color: lGrey, size: 40),
      //     showUnselectedLabels: true,
      //     unselectedLabelStyle:
      //         TextStyle(color: lGrey, fontWeight: FontWeight.bold),
      //     unselectedItemColor: lGrey,
      //     //mouseCursor: SystemMouseCursors.grab,
      //     selectedFontSize: 12.sp,
      //     unselectedFontSize: 12.sp,
      //     selectedIconTheme: IconThemeData(color: basicPink, size: 40),
      //     selectedItemColor: basicPink,
      //     selectedLabelStyle: TextStyle(color: basicPink),
      //     currentIndex: _selectedIndex,
      //     onTap: _onItemTapped,
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage("assets/icon/tab4.png"),
      //           size: 30,
      //         ),
      //         label: 'الرئيسية',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage("assets/icon/tab3.png"),
      //           size: 30,
      //         ),
      //         label: 'فلتر',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage("assets/icon/tab2.png"),
      //           size: 30,
      //         ),
      //         label: 'حسابي',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage("assets/icon/tab1.png"),
      //           size: 30,
      //         ),
      //         label: 'الاعدادات',
      //       ),
      //     ],
      //   ),
      // ),
      body:
          //  (_selectedIndex == 0)
          //      ?
          //      _pages.elementAt(_selectedIndex)
          //       :
          SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 25.h, left: 10.w, right: 10.w),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: bGround,
              ),
              child: Column(children: [
                Container(
                  color: white,
                  child: Column(children: [
                    build_item1(
                      "assets/icon/nation.png",
                      "الجنسية",
                    ),
                    Divider(
                      color: liliGrey,
                      thickness: 1.6.w,
                    ),
                    build_item1(
                      "assets/icon/status.png",
                      "الحالة الاجتماعية",
                    ),
                    Divider(
                      color: liliGrey,
                      thickness: 1.6.w,
                    ),
                    build_item1(
                      "assets/icon/gps.png",
                      "بلد الاقامة",
                    ),
                    Divider(
                      color: liliGrey,
                      thickness: 1.6.w,
                    ),
                    build_item1(
                      "assets/icon/gover.png",
                      "المحافظة",
                    ),
                    Divider(
                      color: liliGrey,
                      thickness: 1.6.w,
                    ),
                    build_item1(
                      "assets/icon/study.png",
                      "التعليم",
                    ),
                    Divider(
                      color: liliGrey,
                      thickness: 1.6.w,
                    ),
                    build_item1(
                      "assets/icon/faculty.png",
                      "الكلية",
                    ),
                    Divider(
                      color: liliGrey,
                      thickness: 1.6.w,
                    ),
                    build_item1(
                      "assets/icon/faculty.png",
                      "الجامعة",
                    ),
                    Divider(
                      color: liliGrey,
                      thickness: 1.6.w,
                    ),
                    build_item1(
                      "assets/icon/bag.png",
                      "هل تعمل",
                    ),
                    Divider(
                      color: liliGrey,
                      thickness: 1.6.w,
                    ),
                    build_item1(
                      "assets/icon/bag.png",
                      "مجال عملها",
                    ),
                    Divider(
                      color: liliGrey,
                      thickness: 1.6.w,
                    ),
                    build_item2(
                        "assets/icon/tall.png",
                        "الطول",
                        _currentRangeValues.start.round().toString() +
                            " : " +
                            _currentRangeValues.end.round().toString() +
                            "سم"),
                    Divider(
                      color: liliGrey,
                      thickness: 1.6.w,
                    ),
                    build_item1(
                      "assets/icon/hijab.png",
                      "الحجاب",
                    ),
                    Divider(
                      color: liliGrey,
                      thickness: 1.6.w,
                    ),
                    build_item1(
                      "assets/icon/skin.png",
                      "لون البشرة",
                    ),
                    Divider(
                      color: liliGrey,
                      thickness: 1.6.w,
                    ),
                    build_item2(
                        "assets/icon/age.png",
                        "العمر",
                        _currentRangeValues.start.round().toString() +
                            " : " +
                            _currentRangeValues.end.round().toString() +
                            "سنة"),
                    Divider(
                      color: liliGrey,
                      thickness: 1.6.w,
                    ),
                    build_item1(
                      "assets/icon/newhome.png",
                      "محافظة شقة الزوجية",
                    ),
                    Divider(
                      color: liliGrey,
                      thickness: 1.6.w,
                    ),
                    build_item1(
                      "assets/icon/l.png",
                      "اللحية",
                    ),
                  ]),
                ),
                // SizedBox(
                //   height: 30.h,
                // ),
              ]),
            ),
          ),
          // PhysicalModel(

          //   color: grey,
          //   elevation: 30,
          //   shadowColor: grey,
          //   child: Container(
          //     color: light,
          //     child: Padding(
          //       padding: EdgeInsets.all(20.0.h),
          //       child: Row(
          //         children: [
          //           Expanded(
          //             flex: 1,
          //             child: Container(
          //               height: 44.h,
          //               child: TextButton(
          //                   child: Text('تأكيد',
          //                       style: TextStyle(
          //                         color: white,
          //                         fontSize: 16.sp,
          //                       )),
          //                   style: TextButton.styleFrom(
          //                     backgroundColor: basicPink,
          //                     shape: const RoundedRectangleBorder(
          //                         borderRadius:
          //                             BorderRadius.all(Radius.circular(10))),
          //                   ),
          //                   onPressed: () {
          //                     //model.completAccount();
          //                     // Navigator.of(context).push(
          //                     //     MaterialPageRoute(builder: (context) => BasicInfo()));
          //                   }),
          //             ),
          //           ),
          //           SizedBox(
          //             width: 15.w,
          //           ),
          //           Expanded(
          //             flex: 2,
          //             child: Container(
          //               height: 44.h,
          //               decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(8),
          //                 border: Border.all(color: mlliGrey),
          //                 //color: bGround,
          //               ),
          //               child: Center(
          //                   child: Directionality(
          //                 textDirection: TextDirection.rtl,
          //                 child: Row(children: [
          //                   Text(
          //                     "عدد النتائج اكثر من ",
          //                     style: TextStyle(
          //                       fontSize: 16.sp,
          //                     ),
          //                   ),
          //                   Text(
          //                     "100 ",
          //                     style: TextStyle(
          //                         fontSize: 18.sp,
          //                         fontWeight: FontWeight.bold,
          //                         color: basicPink),
          //                   ),
          //                   Text(
          //                     " مماثلة",
          //                     style: TextStyle(
          //                       fontSize: 16.sp,
          //                     ),
          //                   ),
          //                 ]),
          //               )),
          //             ),
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),
        ]),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build_item1(
    String icon,
    String txt,
  ) =>
      Directionality(
        textDirection: TextDirection.rtl,
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          ImageIcon(
            AssetImage(icon),
            size: 40,
            color: basicPink,
            // ),
          ),
          Expanded(
            child: SizedBox(),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Align(
              child: Text(
                txt,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 300.w,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                      isExpanded: true,
                      icon: ImageIcon(
                        AssetImage("assets/icon/combo.png"),
                        size: 40,
                        color: black,
                      ),
                      hint: Text(
                        "اختر",
                        style: TextStyle(
                          color: black,
                          fontSize: 14.sp,
                        ),
                      ),
                      value: selectedValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue!;
                        });
                      },
                      items: dropdownItems),
                ),
              ),
            ),
          ]),
        ]),
      );

  Widget build_item2(
    String icon,
    String txt1,
    String txt2,
  ) =>
      Directionality(
        textDirection: TextDirection.rtl,
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          ImageIcon(
            AssetImage(icon),
            size: 40,
            color: basicPink,
            // ),
          ),
          Expanded(
            child: SizedBox(),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              Align(
                child: Text(
                  txt1,
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                txt2,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: darkblack,
                ),
              ),
            ]),
            Container(
              width: 320,
              child: SliderTheme(
                data: SliderThemeData(
                    activeTrackColor: basicPink,
                    thumbColor: white,
                    inactiveTrackColor: ldarkGrey,
                    overlayColor: lightPink,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 20)),
                child: RangeSlider(
                  values: _currentRangeValues,
                  min: 0,
                  max: 230,
                  divisions: 10,
                  labels: RangeLabels(
                    _currentRangeValues.start.round().toString(),
                    _currentRangeValues.end.round().toString(),
                  ),
                  onChanged: (RangeValues values) {
                    setState(() {
                      _currentRangeValues = values;
                    });
                  },
                ),
              ),
            ),
          ]),
        ]),
      );
}
