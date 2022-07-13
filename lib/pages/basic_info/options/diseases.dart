import 'package:effah/modules/app/app_state_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../religion_info.dart';
import 'options.dart';
import '../birthdate_info.dart';

class Diseases extends StatefulWidget {
  Diseases({Key? key, required this.progress}) : super(key: key);
  late double progress;
  @override
  State<Diseases> createState() => _DiseasesState();
}

class _DiseasesState extends State<Diseases> {
  bool press = false;
  bool isChecked = false;
  late bool _loading;

  late double _progressValue = widget.progress;
  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<String>.generate(10000, (i) => "Item $i");
  var items = [];
  // bool visible = false;
  List<bool> checkedlist = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  List<myclass> nationalites = [
    myclass("أمراض الكبد والكلي "),
    myclass("الضغط"),
    myclass("القلب"),
    myclass("حروق"),
    myclass("الرئة"),
    //  myclass("مصري "),
    // myclass("سعودي"),
    // myclass("لبناني"),
    // myclass("قطري"),
    //  myclass("مصري "),
    // myclass("سعودي"),
    // myclass("لبناني"),
    // myclass("قطري"),
  ];
  late int tapIndex;

  @override
  void initState() {
    super.initState();
    _loading = false;
    _progressValue = widget.progress;
    tapIndex = nationalites.length;
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      // if (states.any(interactiveStates.contains)) {
      //   return Colors.blue;
      // }
      return white;
      // Color(0xffff8297)
    }

    // final model = Provider.of<AppStateProvider>(context, listen: false);
    TextEditingController firstName = TextEditingController();
    TextEditingController secondName = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: transparnt,
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                'البيانات الشخصية & الجسدية',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: 10.w, right: 10.w, bottom: 45.h, top: 15.h),
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40.0))),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: LinearProgressIndicator(
                    minHeight: 9.h,
                    backgroundColor: bgrey,
                    valueColor: const AlwaysStoppedAnimation<Color>(basicPink),
                    value: _progressValue,
                  ),
                )),
          ),
        ),

        Center(
            child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Text(
            ' هل لديك أمراض ؟',
            style: TextStyle(fontSize: 20.sp),
          ),
        )),

        Padding(
          padding:
              EdgeInsets.only(right: 30.w, left: 30.w, bottom: 8.h, top: 8.h),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextField(
              onChanged: (value) {
                setState(() {});
              },
              controller: editingController,
              decoration: const InputDecoration(
                // labelText: "Search",
                hintText: " بحث ...",
                prefixIcon: Icon(Icons.search, color: basicPink),
                // border: OutlineInputBorder(
                //     borderRadius: BorderRadius.all(Radius.circular(25.0)))
              ),
            ),
          ),
        ),

        // Expanded(
        //   flex: 1,
        //   child: SizedBox(
        //     height: 0.5,
        //   ),
        // ),

        Expanded(
          // flex: 5,
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
                  padding: EdgeInsets.all(18.0.h),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: nationalites.length,
                      itemBuilder: (context, index) {
                        if (editingController.text.isEmpty) {
                          return GestureDetector(
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
                              _updateProgress();
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => ReligionInfo(
                              //             progress: _progressValue)));
                            },
                            child: Padding(
                              padding: EdgeInsets.all(8.0.h),
                              child: Row(
                                children: [
                                  // ListTile(
                                  //   title: Text('${nationalites[index].word} '),
                                  // ),
                                  // Visibility(
                                  //   visible: tapIndex == index && press == false
                                  //       ? true
                                  //       : false,
                                  //   child: const Icon(
                                  //     Icons.check,
                                  //     size: 30,
                                  //     color: Color(0xffff8297),
                                  //   ),
                                  // ),

                                  Transform.scale(
                                    scale: 1.8,
                                    child: Checkbox(
                                      checkColor:
                                          checkedlist[index] ? basicPink : grey,
                                      fillColor:
                                          MaterialStateProperty.resolveWith(
                                              getColor),
                                      value: checkedlist[index],
                                      side: MaterialStateBorderSide.resolveWith(
                                        (states) => BorderSide(
                                            width: 1.0.w,
                                            color: checkedlist[index]
                                                ? basicPink
                                                : grey),
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      onChanged: (bool? value) {
                                        setState(() {
                                          checkedlist[index] = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${nationalites[index].word} ',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: checkedlist[index]
                                            ? basicPink
                                            : black),
                                  ),
                                ],
                              ),
                            ),
                          );
                        } else if (nationalites[index]
                                .word
                                .contains(editingController.text) ||
                            nationalites[index]
                                .word
                                .contains(editingController.text)) {
                          return GestureDetector(
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
                              padding: EdgeInsets.all(8.0.h),
                              child: Row(
                                children: [
                                  // ListTile(
                                  //   title: Text('${nationalites[index].word} '),
                                  // ),
                                  Visibility(
                                    visible: tapIndex == index && press == false
                                        ? true
                                        : false,
                                    child: const Icon(
                                      Icons.check,
                                      size: 30,
                                      color: basicPink,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${nationalites[index].word} ',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color:
                                            tapIndex == index && press == false
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
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SizedBox(
            width: double.infinity,
            child: Row(children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.5.w,
                      // assign the color to the border color
                      color: transparnt,
                    ),
                    color: basicPink,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: TextButton(
                    child: Text('تخطي',
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
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    onPressed: () {
                      // _updateProgress(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Options(progress: _progressValue)));
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 25.w,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: transparnt,
                    border: Border.all(
                      width: 1.5.w,
                      // assign the color to the border color
                      color: black,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: TextButton(
                    child: Text('السابق',
                        style: TextStyle(
                          color: black,
                          fontSize: 16.sp,
                          //fontWeight: FontWeight.w500
                        )),
                    style: TextButton.styleFrom(
                      // backgroundColor: const Color(0xffff8297),
                      // primary: Colors.teal,
                      // onSurface: Colors.yellow,
                      // side: BorderSide(color: Colors.teal, width: 2),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    onPressed: () {
                      // _updateProgress(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Options(progress: _progressValue)));
                    },
                  ),
                ),
              ),
            ]),
          ),
        ),
         SizedBox(
          height: 30.h,
        ),
        GestureDetector(
          onTap: (() {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Options(
                          progress: _progressValue,
                        )));
          }),
          child: Text(
            "الانهاء في وقت اخر",
            style: TextStyle(fontSize: 16.sp),
          ),
        ),
         SizedBox(
          height: 30.h,
        ),
      ]),
    );
  }

  // void _setIconVisible(bool v) {
  //   setState(() {
  //     v = !v;
  //   });
  // }

  void _updateProgress() {
    setState(() {
      _progressValue += 0.1;
    });
  }

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
