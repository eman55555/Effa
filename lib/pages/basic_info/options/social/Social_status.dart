import 'package:effah/constants.dart';
import 'package:effah/modules/app/app_state_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../options.dart';
import 'Children.dart';

class SocialStatus extends StatefulWidget {
  SocialStatus({Key? key, required this.progress}) : super(key: key);
  late double progress;

  @override
  State<SocialStatus> createState() => _SocialStatusState();
}

class _SocialStatusState extends State<SocialStatus> {
  bool press = false;

  late bool _loading;
  late int tapIndex;
  late double _progressValue = widget.progress;
  TextEditingController editingController = TextEditingController();

  final duplicateItems = List<String>.generate(10000, (i) => "Item $i");
  var items = [];

  List<myclass> status = [
    myclass("أعزب"),
    myclass("أرمل"),
    myclass("مطلق"),
  ];

  @override
  void initState() {
    super.initState();
    _loading = false;
    _progressValue = widget.progress;
    tapIndex = status.length;
  }

  @override
  Widget build(BuildContext context) {
    //  final model = Provider.of<AppStateProvider>(context, listen: false);
    TextEditingController firstName = TextEditingController();
    TextEditingController secondName = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: transparnt,
      ),
      body: Column(children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 12.w),
          child: Container(
              alignment: Alignment.centerRight,
              child:  Text(
                'الدين & الحالة الأجتماعية',
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
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            ' ما هي حالتك الأجتماعية ؟',
            style: TextStyle(fontSize: 20.sp),
          ),
        )),
        Expanded(
          // flex: 5,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: Container(
              alignment: Alignment.centerRight,
              child: Card(
                shape: RoundedRectangleBorder(
                  side:  BorderSide(color: llgrey, width: 1.w),
                  borderRadius: BorderRadius.circular(15),
                ),
                color: white,
                child: Padding(
                  padding:  EdgeInsets.all(18.0.h),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: status.length,
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
                              _updateProgress();
                              setState(() {});

                              // press = false;
                              // visible = false;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Children(
                                            progress: _progressValue,
                                          )));
                            },
                            child: Padding(
                              padding:  EdgeInsets.all(8.0.h),
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
                                    '${status[index].word} ',
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
        const Expanded(
          child: SizedBox(),
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
          child:  Text(
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

  void _updateProgress() {
    setState(() {
      _progressValue += 0.1;
    });
  }

  Widget item(i, status) => Row(
        children: [
          // ListTile(
          //   title: Text('${status[i].word} '),
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
