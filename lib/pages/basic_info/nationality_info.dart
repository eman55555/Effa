import 'package:effah/constants.dart';
import 'package:effah/modules/app/app_state_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../modules/basic_info_provider.dart';
import 'religion_info.dart';

import 'birthdate_info.dart';

class NationalityInfo extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return Container(

  //   );
  // }
  NationalityInfo({Key? key, required this.progress}) : super(key: key);
    
     late double progress;
//   @override
//   State<NationalityInfo> createState() => _NationalityInfoState();
// }

// class _NationalityInfoState extends State<NationalityInfo> {
  bool press = false;

  late bool _loading;

  // late double _progressValue = widget.progress;
  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<String>.generate(10000, (i) => "Item $i");
  var items = [];
  // bool visible = false;
  List<myclass> nationalites = [
    myclass("مصري "),
    myclass("سعودي"),
    myclass("لبناني"),
    myclass("قطري"),
    //  myclass("a "),
    // myclass("b"),
    // myclass("c"),
    //  myclass("cs"),
    // myclass("قطري"),
    //  myclass("مصري "),
    // myclass("سعودي"),
    // myclass("لبناني"),
    // myclass("قطري"),
  ];
   int tapIndex =0;
  // _loading = false;

  // tapIndex = nationalites.length;
  @override
  void initState() {
    // super.initState();
    _loading = false;
    // _progressValue = widget.progress;
    tapIndex = nationalites.length;
  }

  @override
  Widget build(BuildContext context) {
    // final model = Provider.of<AppStateProvider>(context, listen: false);
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
        resizeToAvoidBottomInset: false,
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
            padding: EdgeInsets.only(
                left: 10.w, right: 10.w, bottom: 45.h, top: 15.h),
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
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(basicPink),
                      value: Provider.of<InfoProvider>(context, listen: false)
                          .progressValue,
                    ),
                  )),
            ),
          ),

          Center(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.sp),
            child: Text(
              ' الجنسية ؟',
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
                  // setState(() {});
                  Provider.of<InfoProvider>(context, listen: false).rebuild();
                },

                controller: editingController,
                // cursorColor: basicPink,
                decoration: InputDecoration(
                  // fillColor: Colors.amber,
                  // focusColor: Colors.amber,
                  // hoverColor:Colors.amber ,
                  // focusedBorder: ,
                  // labelText: "Search",
                  // focusColor: Colors.amber,
                  // focusedBorder: InputBorder(
                  //   borderSide: BorderSide(
                  //     color: Colors.red
                  //   )
                  // ),
                  //       focusedBorder:  InputBorder(

                  //     borderSide: BorderSide(color: Colors.greenAccent, ),
                  // ),

                  //borderRadius: BorderRadius.circular(15.0),

                  hintText: " بحث ... ",
                  // floatingLabelStyle: TextStyle(
                  //   color: basicPink,
                  // ),

                  //[focusedBorder], displayed when [TextField, InputDecorator.isFocused] is true
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: grey),
                  ),
                  focusColor: basicPink,
                  fillColor: basicPink,

                  prefixIcon: Icon(
                    Icons.search,
                    color: basicPink,
                  ),
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
                    side: BorderSide(color: white, width: 0.3.w),
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
                                // setState(() {});
                                Provider.of<InfoProvider>(context,
                                        listen: false)
                                    .rebuild();
                                // press = false;
                                // visible = false;
                                _updateProgress(context);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ReligionInfo(
                                            progress: Provider.of<InfoProvider>(
                                                    context,
                                                    listen: false)
                                                .progressValue)));
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 25.0.h, horizontal: 10.w),
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
                                    //     color: basicPink,
                                    //   ),
                                    // ),
                                    Icon(
                                      Icons.check,
                                      size: 30,
                                      color: tapIndex == index && press == false
                                          ? basicPink
                                          : transparnt,
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
                                Provider.of<InfoProvider>(context,
                                        listen: false)
                                    .rebuild();
                                // setState(() {});
                                // press = false;
                                // visible = false;
                                _updateProgress(context);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ReligionInfo(
                                            progress: Provider.of<InfoProvider>(
                                                    context,
                                                    listen: false)
                                                .progressValue)));
                              },
                              child: Padding(
                                padding: EdgeInsets.all(8.0.h),
                                child: Row(
                                  children: [
                                    // ListTile(
                                    //   title: Text('${nationalites[index].word} '),
                                    // ),
                                    Visibility(
                                      visible:
                                          tapIndex == index && press == false
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
        ]),
      ),
    );
  }

  // void _setIconVisible(bool v) {
  //   setState(() {
  //     v = !v;
  //   });
  // }

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

// class myclass {
//   String word;

//   myclass(this.word);
// }
