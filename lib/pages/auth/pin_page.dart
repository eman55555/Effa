import 'package:effah/constants.dart';
import 'package:effah/modules/app/app_state_model.dart';
import 'package:effah/pages/complate_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../components/reusable_widgets/rounded_button.dart';
import 'CodeInput.dart';

class PinPage extends StatefulWidget {
  const PinPage({Key? key}) : super(key: key);

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  var size, height, width;
  FocusNode _focusDigit1 = FocusNode();
  FocusNode _focusDigit2 = FocusNode();
  FocusNode _focusDigit3 = FocusNode();
  FocusNode _focusDigit4 = FocusNode();
  FocusNode _focusDigit5 = FocusNode();
  FocusNode _focusDigit6 = FocusNode();

  @override
  void dispose() {
    super.dispose();
    _focusDigit1.dispose();
    _focusDigit2.dispose();
    _focusDigit3.dispose();
    _focusDigit4.dispose();
    _focusDigit5.dispose();
    _focusDigit6.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<AppStateProvider>(context, listen: false);

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
     resizeToAvoidBottomInset: false,
      //   appBar: AppBar(
      //  backgroundColor: Colors.transparent,
      //  elevation: 0.0,
      //   ),
      body: Column(children: [
        SizedBox(
          height: 30.h,
        ),
        Container(
          // width: 50,
          alignment: Alignment.center, // use aligment
          child: Image.asset(
            'assets/image/code_top.png',
            //  height: height*0.2,
            // width: 45,
            width: double.infinity,
            height: 137.48.h,
            // width: 375.w,
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          height: height * 0.03,
        ),
        Expanded(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.15,
              ),
              child: Column(children: [
                Container(
                  alignment: Alignment.center, // use aligment
                  child: Image.asset(
                    'assets/image/code_center.png',
                    //width:375.w ,
                    // height: 120.h,
                    // height: 45,
                    // width: 45,
                    // width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: height * 0.03),
                Text(
                  "من فضلك ادخل كود التفعيل المرسل الي",
                  style: TextStyle(
                    // fontFamily: 'JFFlat',

                    fontSize: 14.sp,

                    color: black,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  " 012356789987",
                  style: TextStyle(
                    // fontFamily: 'JF Flat',

                    fontSize: 14.sp,

                    color: basicPink,

                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Container(
                  // margin: EdgeInsets.only(top: 100),

                  child: Row(
                    children: [
                      CodeInput(
                        focusNode0: _focusDigit5,

                        focusNode1: _focusDigit6,

                        // focusNode2: null,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.063,
                      ),
                      CodeInput(
                        focusNode0: _focusDigit4,
                        focusNode1: _focusDigit5,
                        focusNode2: _focusDigit6,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.063,
                      ),
                      CodeInput(
                        focusNode0: _focusDigit3,
                        focusNode1: _focusDigit4,
                        focusNode2: _focusDigit5,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.063,
                      ),
                      CodeInput(
                        focusNode0: _focusDigit2,
                        focusNode1: _focusDigit3,
                        focusNode2: _focusDigit4,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.063,
                      ),
                      CodeInput(
                        focusNode0: _focusDigit1,
                        focusNode1: _focusDigit2,
                        focusNode2: _focusDigit3,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.063,
                      ),
                      CodeInput(
                        // focusNode0: null,

                        focusNode1: _focusDigit1,

                        focusNode2: _focusDigit2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.003,
                ),
                Row(
                  children: [
                    Text(
                      '00 : 59 ',

                      style: TextStyle(
                        // fontFamily: 'JF Flat',

                        fontSize: 14.sp,

                        color: basicPink,
                      ),

                      // textAlign: TextAlign.right,
                    ),
                    Expanded(
                        child: SizedBox(
                      width: width * 0.03,
                    )),
                    Text(
                      'إعادة ارسال الكود',

                      style: TextStyle(
                        // fontFamily: 'JF Flat',

                        fontSize: 14.sp,

                        color: black,
                      ),

                      // textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                SizedBox(
                  width: 148.w,
                  height: 44.w,
                  child: RoundedButton(
                    color: basicPink,
                    mywidget: Text('تأكيد',
                        style: TextStyle(
                            color: white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500)),
                    raduis: 10,
                    myfun: () {
                      //print('Pressed');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ComplateInfo()));
                      // model.verified();
                    },
                  ),
                )
                // TextButton(
                //   child: const Padding(
                //     padding: EdgeInsets.only(left: 40.0, right: 40.0),
                //     child: Text('تأكيد',
                //         style: TextStyle(
                //             color: Colors.white,
                //             fontSize: 18,
                //             fontWeight: FontWeight.w500)),
                //   ),
                //   style: TextButton.styleFrom(
                //     backgroundColor: const Color(0xffff8297),
                //     // primary: Colors.teal,
                //     // onSurface: Colors.yellow,
                //     // side: BorderSide(color: Colors.teal, width: 2),
                //     shape: const RoundedRectangleBorder(
                //         borderRadius: BorderRadius.all(Radius.circular(10))),
                //   ),
                //   onPressed: () {
                //     print('Pressed');
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => ComplateInfo()));
                //     // model.verified();
                //   },
                // )
              ]),
            ),
          ),
        ),
      ]),
    );
  }
}
