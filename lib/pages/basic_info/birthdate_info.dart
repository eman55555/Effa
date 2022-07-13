import 'package:effah/constants.dart';
import 'package:effah/modules/app/app_state_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

import '../../components/reusable_widgets/rounded_button.dart';
import '../../modules/basic_info_provider.dart';
import 'birthdate_info.dart';

import 'nationality_info.dart';

class BirthDateInfo extends StatelessWidget {
  BirthDateInfo({Key? key, required this.progress}) : super(key: key);
  late double progress;
  late double _progressValue = progress;

  @override
  Widget build(BuildContext context) {
    // final model = Provider.of<AppStateProvider>(context, listen: false);
    TextEditingController firstName = TextEditingController();
    TextEditingController secondName = TextEditingController();
    Future<bool> _onWillPop() async {
      _removeProgress(context);
      return true;
    }

    print(Provider.of<InfoProvider>(context, listen: false).progressValue);
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
                      value: _progressValue,
                    ),
                  )),
            ),
          ),
          Center(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Text(
              'تاريخ ميلادك ؟',
              style: TextStyle(fontSize: 20.sp),
            ),
          )),
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.only(bottom: 18.0.h, left: 15.w, right: 15.w),
              child: Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: llgrey, width: 1.w),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: SizedBox(
                  //color: Colors.black12,
                  // width: MediaQuery.of(context).size.width * .8,
                  // height: MediaQuery.of(context).size.height / 7,
                  child: CupertinoDatePicker(
                    // backgroundColor: Colors.amber,
                    dateOrder: DatePickerDateOrder.mdy,
                    mode: CupertinoDatePickerMode.date,
                    initialDateTime: DateTime.now(),
                    onDateTimeChanged: (dateTime) {
                      debugPrint("$dateTime");
                    },
                  ),
                ),
              ),
            ),
          ),

          // const Expanded( child: SizedBox()),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: SizedBox(
              // width: double.infinity,
              width: 264.w,
              //height: 44.h,
              child: RoundedButton(
                  mywidget: Padding(
                    padding: EdgeInsets.symmetric(vertical: 7),
                    child: Text('التالي',
                        style: TextStyle(
                          color: white,
                          fontSize: 16.sp,
                          // fontWeight: FontWeight.w500
                        )),
                  ),
                  raduis: 10,
                  myfun: () {
                    _updateProgress(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                NationalityInfo(progress: _progressValue)));
                  },
                  color: basicPink),
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 50),
          //   child: SizedBox(
          //     width: double.infinity,
          //     child: TextButton(
          //       child: const Text('التالي',
          //           style: TextStyle(
          //               color: Colors.white,
          //               fontSize: 18,
          //               fontWeight: FontWeight.w500)),
          //       style: TextButton.styleFrom(
          //         backgroundColor: const Color(0xffff8297),
          //         // primary: Colors.teal,
          //         // onSurface: Colors.yellow,
          //         // side: BorderSide(color: Colors.teal, width: 2),
          //         shape: const RoundedRectangleBorder(
          //             borderRadius: BorderRadius.all(Radius.circular(10))),
          //       ),
          //       onPressed: () {
          //         _updateProgress(context);
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) =>
          //                     NationalityInfo(progress: _progressValue)));
          //       },
          //     ),
          //   ),
          // ),
          const Expanded(
            flex: 1,
            child: SizedBox(
                // height: 10,
                ),
          )
        ]),
      ),
    );
  }

  // void _updateProgress(BuildContext context) {
  //   _progressValue += 0.1;
  //   Provider.of<InfoProvider>(context, listen: false).rebuild();
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
}
