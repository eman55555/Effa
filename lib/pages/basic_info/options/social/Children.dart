import 'package:effah/constants.dart';
import 'package:effah/modules/app/app_state_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../options.dart';
import 'Social_status.dart';

class Children extends StatefulWidget {
  Children({Key? key, required this.progress}) : super(key: key);
  late double progress;

  @override
  State<Children> createState() => _ChildrenState();
}

class _ChildrenState extends State<Children> {
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
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Container(
              alignment: Alignment.centerRight,
              child: Text(
                'الدين & الحالة الأجتماعية',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w500,
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
            ' هل لديك أولاد من الزواج السابق ؟',
            style: TextStyle(fontSize: 20.sp),
          ),
        )),
        SizedBox(
          height: 30.h,
        ),
        Row(children: [
          const Expanded(flex: 1, child: SizedBox()),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.5.w,
                    // assign the color to the border color
                    color: orginalRed,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                ),
                child: const ImageIcon(
                  AssetImage("assets/icon/false.png"),
                  size: 70,
                  color: orginalRed,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                "لا",
                style: TextStyle(fontSize: 16.sp),
              )
            ],
          ),
          const Expanded(flex: 2, child: SizedBox()),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.5.w,
                    // assign the color to the border color
                    color: orginalGreen,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                ),
                child: const ImageIcon(
                  AssetImage("assets/icon/true.png"),
                  size: 70,
                  color: orginalGreen,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
               Text(
                "نعم",
                style: TextStyle(fontSize: 16.sp),
              )
            ],
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
        ]),
        const Expanded(
          child: SizedBox(),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
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
                    child:  Text('تخطي',
                        style: TextStyle(
                            color: white,
                            fontSize: 16.sp,
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
                    child:  Text('السابق',
                        style: TextStyle(
                            color: black,
                            fontSize: 16.sp,
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
                                  SocialStatus(progress: _progressValue)));
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
