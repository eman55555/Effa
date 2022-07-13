import 'package:effah/constants.dart';
import 'package:effah/modules/app/app_state_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../modules/basic_info_provider.dart';
import 'options/options.dart';

class ReligionInfo extends StatefulWidget {
  ReligionInfo({Key? key, required this.progress}) : super(key: key);
  late double progress;

  @override
  State<ReligionInfo> createState() => _ReligionInfoState();
}

class _ReligionInfoState extends State<ReligionInfo> {
  bool press = false;

  late bool _loading;
  late int tapIndex;
  late double _progressValue = widget.progress;
  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<String>.generate(10000, (i) => "Item $i");
  var items = [];

  List<myclass> religion = [
    myclass("مسلم"),
    myclass("مسيحي"),
  ];

  @override
  void initState() {
    super.initState();
    _loading = false;
    _progressValue = widget.progress;
    tapIndex = religion.length;
  }

  @override
  Widget build(BuildContext context) {
    //  final model = Provider.of<AppStateProvider>(context, listen: false);
    TextEditingController firstName = TextEditingController();
    TextEditingController secondName = TextEditingController();
print(Provider.of<InfoProvider>(context, listen: false).progressValue);
    Future<bool> _onWillPop() async {
      // return false; //<-- SEE HERE
      _removeProgress(context);
      return true;
    }

    return WillPopScope(
onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: transparnt,
        ),
        body: Column(children: [
          Directionality(
            textDirection: TextDirection.rtl,
            // alignment: Alignment.centerRight,
            child: Row(children: [
              ImageIcon(
                AssetImage("assets/icon/nextto.png"),
                size: 50,
                color: basicPink,
              ),
              Text(
                'البيانات الأساسية',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                ),
              )
            ]),
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
                      value:  Provider.of<InfoProvider>(context, listen: false).progressValue,
                    ),
                  )),
            ),
          ),
          Center(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Text(
              ' الديانة ؟',
              style: TextStyle(fontSize: 20.sp),
            ),
          )),
          SizedBox(
            height: 40.h,
          ),
          Padding(
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
                      itemCount: religion.length,
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
                              _updateProgress(context);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Options(
                                            progress: _progressValue,
                                          )));
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 25.0.h, horizontal: 10.w),
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: Row(
                                  children: [
                                    // ListTile(
                                    //   title: Text('${nationalites[index].word} '),
                                    // ),
    
                                    Text(
                                      '${religion[index].word} ',
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          color:
                                              tapIndex == index && press == false
                                                  ? basicPink
                                                  : black),
                                    ),
                                    Spacer(),
                                    // Visibility(
                                    //   visible: tapIndex == index && press == false
                                    //       ? true
                                    //       : false,
                                    //   child: const Icon(
                                    //     Icons.check,
                                    //     size: 30,
                                    //     color: basicPink,
                                    //   ),
                                    // ),
    
                                     Icon(
                                        Icons.check,
                                        size: 30,
                                        color: tapIndex == index && press == false? basicPink : transparnt,
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }
                        // else if (religion[index]
                        //         .word
                        //         .contains(editingController.text) ||
                        //     religion[index]
                        //         .word
                        //         .contains(editingController.text)) {
                        //   return GestureDetector(
                        //     onTap: () {
                        //       tapIndex = index;
                        //       // _setIconVisible(visible);
                        //       // print("before");
                        //       // print(visible);
                        //       // visible = !visible;
                        //       press = !press;
                        //       // print("after");
                        //       // print(visible);
                        //       setState(() {});
                        //       // press = false;
                        //       // visible = false;
                        //       // Navigator.push(
                        //       //     context,
                        //       //     MaterialPageRoute(
                        //       //         builder: (context) => ReligionInfo()));
                        //     },
                        //     child: Padding(
                        //       padding: const EdgeInsets.all(8.0),
                        //       child: Row(
                        //         children: [
                        //           // ListTile(
                        //           //   title: Text('${nationalites[index].word} '),
                        //           // ),
                        //           Visibility(
                        //             visible: tapIndex == index && press == false
                        //                 ? true
                        //                 : false,
                        //             child: const Icon(
                        //               Icons.check,
                        //               size: 30,
                        //               color: Color(0xffff8297),
                        //             ),
                        //           ),
                        //           const Spacer(),
                        //           Text(
                        //             '${religion[index].word} ',
                        //             style: TextStyle(
                        //                 fontSize: 20,
                        //                 color:
                        //                     tapIndex == index && press == false
                        //                         ? const Color(0xffff8297)
                        //                         : Colors.black),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   );
                        // }
                        else {
                          return Container();
                        }
                      }),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  void _updateProgress(BuildContext context) {
    //Provider.of<InfoProvider>(context, listen: false).updateProgress(_progressValue);
    Provider.of<InfoProvider>(context, listen: false).progressValue += 0.2;
    Provider.of<InfoProvider>(context, listen: false).rebuild();
  }

  void _removeProgress(BuildContext context) {
    // Provider.of<InfoProvider>(context, listen: false).removeProgress(_progressValue);
 Provider.of<InfoProvider>(context, listen: false).progressValue -= 0.2;
    Provider.of<InfoProvider>(context, listen: false).rebuild();
  }

  Widget item(i, religion) => Row(
        children: [
          // ListTile(
          //   title: Text('${religion[i].word} '),
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
