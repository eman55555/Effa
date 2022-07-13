import 'package:effah/constants.dart';
import 'package:effah/modules/app/app_state_model.dart';
import 'package:effah/pages/basic_info/gender.dart';
import 'package:effah/pages/basic_info/options/bottom_tabs/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors
class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<AppStateProvider>(context, listen: false);

    TextEditingController name = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController topic = TextEditingController();
    TextEditingController message = TextEditingController();

    return Scaffold(
      backgroundColor: bGround,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 7,
        shadowColor: lliGrey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        backgroundColor: white,
        title: Center(
          child: Text(
            "تواصل معنا",
            style: TextStyle(color: black, fontSize: 18.sp),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: ImageIcon(
              AssetImage("./././assets/icon/arrow_back.png"),
              color: black,
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
        ],
        leading: Container(),
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 25.h, bottom: 10.h),
          child: Center(
            child: Image.asset(
              "assets/image/logo.png",
              width: 132.18.w,
              // height: 80.h,
            ),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),

        // const SizedBox(
        //   height: 20,
        // ),
        Expanded(
          flex: 6,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 6.w),
            child: Card(
              elevation: 6,
              shadowColor: black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 35.h),
                child: Column(children: [
                  _txtField(
                      name, 'الاسم ', "./././assets/icon/name.png", context),
                  _txtField(email, 'البريد الالكتروني ',
                      "./././assets/icon/email.png", context),
                  _txtField(topic, 'الموضوع ', "./././assets/icon/topic.png",
                      context),
                  Container(
                      // height: 20,
                      child: _txtField(message, 'نص الرسالة ',
                          "./././assets/icon/topic.png", context)),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 10.h, bottom: 5.h),
                      child: Container(
                        width: 100.w,
                        // height: 44.h,
                        child: TextButton(

                            //padding: EdgeInsets.only(left: 40.0, right: 40.0),
                            child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 7.h),
                              child: Text('ارسال',
                                  style: TextStyle(
                                    color: white,
                                    fontSize: 14.sp,
                                  )),
                            ),
                            style: TextButton.styleFrom(
                              backgroundColor: basicPink,

                              // primary: Colors.teal,
                              // onSurface: Colors.yellow,
                              // side: BorderSide(color: Colors.teal, width: 2),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(22))),
                            ),
                            onPressed: () {}),
                      ))
                ]),
              ),
            ),
          ),
        ),

        // Expanded(child: SizedBox())
      ]),
    );
  }

  Widget _txtField(TextEditingController cont, String txt, String img,
          BuildContext context) =>
      Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: TextFormField(
            controller: cont,
            keyboardType: TextInputType.name,
            onFieldSubmitted: (String value) {},
            onChanged: (String value) {},
            decoration: InputDecoration(
              labelText: txt,
              labelStyle: TextStyle(fontSize: 14.sp),
              prefixIcon: ImageIcon(
                AssetImage(img),
                color: ddGrey,
              ),
              enabledBorder: OutlineInputBorder(
                //borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: basicPink, width: 1.5),
              ),
              border: const OutlineInputBorder(),
            ),
          ),
        ),
      );
}
