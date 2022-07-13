import 'dart:async';

import 'package:effah/pages/basic_info/options/myProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants.dart';
import 'bottom_tabs/filter/filter.dart';
import 'bottom_tabs/my_account/my_account.dart';
import 'bottom_tabs/settings/settings.dart';
import 'notifications.dart';

class NoNotifications extends StatefulWidget {
  NoNotifications({Key? key, required this.progress}) : super(key: key);
  late double progress;
  @override
  State<NoNotifications> createState() => _NoNotificationsState();
}

class _NoNotificationsState extends State<NoNotifications> {
  // RangeValues _currentRangeValues = const RangeValues(0, 100);

  // static String _valueToString(double value) {
  //   return value.toStringAsFixed(0);
  // }
  int _selectedIndex = 0;

  //String? selectedValue = null;
  // bool res = false;
  // final _dropdownFormKey = GlobalKey<FormState>();
  void _startTimer() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MyProfile(
                    progress: widget.progress,
                  )));
    });
  }

  @override
  Widget build(BuildContext context) {
    _startTimer();
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
      backgroundColor: white,
      appBar: AppBar(
        elevation: 2.5,
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
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(color: lGrey, size: 40),
        showUnselectedLabels: true,
        unselectedLabelStyle:
            TextStyle(color: lGrey, fontWeight: FontWeight.bold),
        unselectedItemColor: lGrey,
        //mouseCursor: SystemMouseCursors.grab,
        selectedFontSize: 12.sp,
        unselectedFontSize: 12.sp,
        selectedIconTheme: IconThemeData(color: basicPink, size: 40),
        selectedItemColor: basicPink,
        selectedLabelStyle: TextStyle(
          color: basicPink,
          //fontWeight: FontWeight.bold
        ),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icon/tab1.png"),
              size: 30,
            ),
            label: 'الاعدادات',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icon/tab2.png"),
              size: 30,
            ),
            label: 'حسابي',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icon/tab3.png"),
              size: 30,
            ),
            label: 'فلتر',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icon/tab4.png"),
              size: 30,
            ),
            label: 'الرئيسية',
          ),
        ],
      ),
      body:
          //  (_selectedIndex == 0)
          //      ?
          //      _pages.elementAt(_selectedIndex)
          //       :
          Padding(
        padding: EdgeInsets.only(top: 30.h, left: 25.w, right: 20.w),
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(children: [
            Image.asset(
              "assets/image/nonotify.png",
              fit: BoxFit.cover,
              // height: 278.32.h,
              // width: double.infinity,
            ),
            Text(
              "يتم الان عرض حسابك علي المستخدمين . سيصلك اشعار عندما يرسل احدهم طلب لكي ",
              style: TextStyle(
                fontSize: 16.sp,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Text(
                "يمكنك استخدام الفلتر لتحديد من يمكنه ارسال طلبات.",
                style: TextStyle(
                  fontSize: 13.sp,
                ),
              ),
            ),
            Container(
                width: 165.w,
                //height: 54.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: transparnt,
                    border: Border.all(
                      color: basicPink,
                      width: 2.w,
                    )),
                child: TextButton(
                  onPressed: () {
                    // Navigator.pop(
                    //     context);
                    //                Navigator.push(
                    // context,
                    // MaterialPageRoute(
                    //     builder: (context) =>   Filter()));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 7.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("الفلتر",
                              style:
                                  TextStyle(color: basicPink, fontSize: 14.sp)),
                          SizedBox(
                            width: 5.w,
                          ),
                          Image.asset(
                            "assets/icon/tab3.png",
                            color: basicPink,
                          ),
                          // size: 30,
                        ]),
                  ),
                )),
          ]),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
