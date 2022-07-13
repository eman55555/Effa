import 'package:effah/constants.dart';
import 'package:flutter/material.dart';

import '../../notifications.dart';

import '../filter/filter.dart';
import '../my_account/my_account.dart';
import '../settings/settings.dart';

class Attemps extends StatefulWidget {
  const Attemps({Key? key}) : super(key: key);

  @override
  State<Attemps> createState() => _AttempsState();
}

class _AttempsState extends State<Attemps> {
  RangeValues _currentRangeValues = const RangeValues(0, 100);

  // static String _valueToString(double value) {
  //   return value.toStringAsFixed(0);
  // }
  int _selectedIndex = 0;
  String? selectedValue = null;
  // bool res = false;
  // final _dropdownFormKey = GlobalKey<FormState>();

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
        elevation: 2.5,
        foregroundColor: black,
        backgroundColor: white,
        actions: [
          Image.asset(
            "assets/image/logo.png",
            width: 100,
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
        selectedFontSize: 20,
        unselectedFontSize: 20,
        selectedIconTheme: IconThemeData(color: basicPink, size: 40),
        selectedItemColor: basicPink,
        selectedLabelStyle:
            TextStyle(color: basicPink, fontWeight: FontWeight.bold),
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
        padding: const EdgeInsets.only(top: 20, left: 25, right: 20),
        child: Column(children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              // width: 80,
              // height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: red),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage("assets/icon/filt.png"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "150",
                      style: TextStyle(
                          color: white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Image.asset(
            "assets/image/attemps.png",
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Text(
            "نفذت المحاولات المجانية",
            style: TextStyle(
                color: basicPink, fontSize: 23, fontWeight: FontWeight.bold),
          ),
          Text(
            "نأسف لقد نفذت المحاولات المجانية . يمكنك الانتظار 24 ساعة حتي يتم التجديد او يمكنك شراء نقاط الآن",
            style: TextStyle(
              fontSize: 19,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: basicPink,
                          border: Border.all(
                            color: transparnt,
                            width: 2,
                          )),
                      child: TextButton(
                        onPressed: () {
                          // Navigator.pop(
                          //     context);
                        },
                        child: Text("شراء نقاط",
                            style: TextStyle(color: white, fontSize: 18)),
                      )),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: transparnt,
                          border: Border.all(
                            color: basicPink,
                            width: 2.2,
                          )),
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icon/filt.png"),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                "اظهر مقابل 100",
                                style: TextStyle(fontSize: 18, color: black),
                              ),
                            ]),
                      )),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
