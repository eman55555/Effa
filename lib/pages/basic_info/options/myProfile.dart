import 'dart:async';

import 'package:effah/constants.dart';
import 'package:effah/pages/basic_info/options/bottom_tabs/filter/filter.dart';
import 'package:effah/pages/basic_info/options/bottom_tabs/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bottom_tabs/home/home.dart';
import 'bottom_tabs/my_account/my_account.dart';
import 'no_notifications.dart';
import 'notifications.dart';

class MyProfile extends StatefulWidget {
  MyProfile({Key? key, required this.progress}) : super(key: key);
  late double progress;
  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  int _selectedIndex = 0;
  // void _startTimer() {
  //   Timer(const Duration(seconds: 6), () {
  //     Navigator.pop(context);
  //     Navigator.push(
  //         context, MaterialPageRoute(builder: (context) => NoNotifications(progress: widget.progress,)));
  //   });
    // Timer(const Duration(seconds: 3), () {
    //   Navigator.pop(context);
    //   Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //           builder: (context) => MyProfile(
    //                 progress: widget.progress,
    //               )));

    // });
  //}
//   @override
//   void initState() {
//   super.initState();
//   _startTimer();
// }

  @override
  Widget build(BuildContext context) {
     List<Widget> _pages = <Widget>[
      Home(progress: widget.progress),
      Filter(),
      MyAccount(),
      Settings()
    ];
    
    return Scaffold(
      
      backgroundColor: bGround,
       appBar: AppBar(
        elevation: 0,
        foregroundColor: black,
        backgroundColor: white,
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 15.w),
            child: Image.asset(
              "assets/image/logo.png",
              width: 66.09.w,
            ),
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
      body:
          // SingleChildScrollView(
          //child:
          _pages.elementAt(_selectedIndex),

      // child: Column(children: [
      //   Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 15),
      //     child: Row(
      //       children: [
      //         Icon(
      //           Icons.notifications_active,
      //           size: 45,
      //         ),
      //         Spacer(),
      //         Image.asset(
      //           "assets/image/logo.png",
      //           width: 100,
      //         ),
      //       ],
      //     ),
      //   ),
      //   SizedBox(
      //     height: 10,
      //   ),
      //   Container(
      //     // height: double.infinity,
      //     // width: double.infinity,
      //     color: Colors.grey,
      //     child: Padding(
      //       padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
      //       child: Card(
      //         color: Colors.amber,
      //         elevation: 5,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(15),
      //         ),
      //         child: Column(
      //           children: [
      //             Container(
      //               height: 400,
      //               width: double.infinity,
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(15),
      //                 image: DecorationImage(
      //                     image: AssetImage("assets/image/personal_pic.png"),
      //                     fit: BoxFit.cover),
      //               ),

      //               // Container(
      //               //   decoration:
      //               //       BoxDecoration(borderRadius: BorderRadius.circular(15)),
      //               //   // width: double.infinity,
      //               //   child: Image.asset(
      //               //     "assets/image/personal_pic.png",
      //               //     width: 100,
      //               //   ),

      //               // ),
      //             ),
      //             Text("jjjjjjjjjjj"),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ]),
      // ),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
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
          selectedLabelStyle:
              TextStyle(color: basicPink),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icon/tab4.png"),
                size: 30,
              ),
              label: 'الرئيسية',
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
                AssetImage("assets/icon/tab2.png"),
                size: 30,
              ),
              label: 'حسابي',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icon/tab1.png"),
                size: 30,
              ),
              label: 'الاعدادات',
            ),
          ],
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
