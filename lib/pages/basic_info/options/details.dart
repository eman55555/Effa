import 'dart:io';

import 'package:effah/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../modules/basic_info_provider.dart';

class Details extends StatefulWidget {
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  String _enteredText = '';
  bool _isDeleted = false;
  bool _isDeleted1 = false;
  bool _isDeleted2 = false;
  bool _isDeleted3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: transparnt,
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: Container(
              alignment: Alignment.centerRight,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text(
                  'وصف عني & عن شريك حياتي',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
        ),
        SizedBox(
          height: 25.h,
        ),
        Directionality(
            textDirection: TextDirection.rtl,
            child: Row(children: [
              ImageIcon(
                AssetImage("assets/icon/10.png"),
                size: 50,
                color: basicPink,
              ),
              Text(
                'نبذه عنك',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
            ])),

        SizedBox(
          height: 15.h,
        ),
        // Container(
        //   margin: EdgeInsets.all(13),
        //   padding: EdgeInsets.all(25),
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //     border: Border.all(
        //         color: Colors.grey, // set border color
        //         width: 2.1), // set border width
        //     borderRadius: BorderRadius.all(
        //         Radius.circular(10.0)), // set rounded corner radius
        //   ),
        // child:
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextField(
              maxLines: 5,
              minLines: 1,
              onChanged: (value) {
                setState(() {
                  _enteredText = value;
                });
                //  _enteredText = value;

                Provider.of<InfoProvider>(context, listen: false).rebuild();
              },
              maxLength: 60.h.toInt(),
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 70.h, horizontal: 10.w),

                // counterText:
                //     '${_enteredText.length.toString()} character(s)',
                hintText: 'شاب طموح متدين ',
                hintStyle: TextStyle(fontSize: 14.sp),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: grey, width: 2.w),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: grey, width: 2.w),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),

                // border: OutlineInputBorder(
                //   // borderSide: BorderSide(color: Colors.yellow, width: 3),
                //   borderRadius: BorderRadius.all(Radius.circular(15.0)),
                // ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child:
              //Text('${_enteredText.length.toString()} character(s)')),
              Padding(
            padding: EdgeInsets.only(right: 20.0.w),
            child: Text(
              "اكتب نبذه لا تقل عن 50 حرف",
              style: TextStyle(color: grey, fontSize: 14.sp),
            ),
          ),
        ),
        // Directionality(
        //     textDirection: TextDirection.rtl,
        //     child: Row(children: [
        //       ImageIcon(
        //         AssetImage("assets/icon/12.png"),
        //         size: 50,
        //         color: basicPink,
        //       ),
        //       Text(
        //         'اهتماماتك',
        //         textAlign: TextAlign.right,
        //         style: TextStyle(
        //           fontSize: 16.sp,
        //         ),
        //       ),
        //     ])),

        // SizedBox(
        //   height: 15.h,
        // ),

        // Container(
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(15),
        //       border: Border.all(
        //         color: grey,
        //         width: 2.w,
        //       )),
        //   child: Padding(
        //     padding: EdgeInsets.only(
        //         left: 6.w, right: 6.w, top: 20.h, bottom: 13.h),
        //     child: Wrap(
        //       spacing: 9.0.w, // spacing between adjacent chips
        //       runSpacing: 11.0.h,
        //       children: [
        //         _isDeleted
        //             ? Container()
        //             : Directionality(
        //                 textDirection: TextDirection.rtl,
        //                 child: Chip(
        //                   materialTapTargetSize:
        //                       MaterialTapTargetSize.shrinkWrap,
        //                   deleteIcon: CircleAvatar(
        //                     backgroundColor: white,
        //                     child: Icon(
        //                       Icons.close,
        //                       size: 15,
        //                     ),
        //                   ),
        //                   backgroundColor: dGrey,
        //                   label: Text(
        //                     "مشاهدة الأفلام",
        //                     style:
        //                         TextStyle(color: white, fontSize: 12.sp),
        //                   ),
        //                   onDeleted: () {
        //                     setState(() {
        //                       _isDeleted = true;
        //                     });
        //                   },
        //                 ),
        //               ),

        //         _isDeleted1
        //             ? Container()
        //             : Directionality(
        //                 textDirection: TextDirection.rtl,
        //                 child: Chip(
        //                   materialTapTargetSize:
        //                       MaterialTapTargetSize.shrinkWrap,
        //                   deleteIcon: CircleAvatar(
        //                     backgroundColor: white,
        //                     child: Icon(
        //                       Icons.close,
        //                       size: 15,
        //                     ),
        //                   ),
        //                   backgroundColor: dGrey,
        //                   label: Text(
        //                     " العمل",
        //                     style:
        //                         TextStyle(color: white, fontSize: 12.sp),
        //                   ),
        //                   onDeleted: () {
        //                     setState(() {
        //                       _isDeleted1 = true;
        //                     });
        //                   },
        //                 ),
        //               ),
        //         _isDeleted3
        //             ? Container()
        //             : Directionality(
        //                 textDirection: TextDirection.rtl,
        //                 child: Chip(
        //                   materialTapTargetSize:
        //                       MaterialTapTargetSize.shrinkWrap,
        //                   deleteIcon: CircleAvatar(
        //                     backgroundColor: white,
        //                     child: Icon(
        //                       Icons.close,
        //                       size: 15,
        //                     ),
        //                   ),
        //                   backgroundColor: dGrey,
        //                   label: Text(
        //                     " قراءة الكتب",
        //                     style:
        //                         TextStyle(color: white, fontSize: 12.sp),
        //                   ),
        //                   onDeleted: () {
        //                     setState(() {
        //                       _isDeleted3 = true;
        //                     });
        //                   },
        //                 ),
        //               ),

        //         _isDeleted2
        //             ? Container()
        //             : Directionality(
        //                 textDirection: TextDirection.rtl,
        //                 child: Chip(
        //                   materialTapTargetSize:
        //                       MaterialTapTargetSize.shrinkWrap,
        //                   deleteIcon: CircleAvatar(
        //                     backgroundColor: white,
        //                     child: Icon(
        //                       Icons.close,
        //                       size: 15,
        //                     ),
        //                   ),
        //                   backgroundColor: dGrey,
        //                   label: Text(
        //                     " الرياضة",
        //                     style:
        //                         TextStyle(color: white, fontSize: 12.sp),
        //                   ),
        //                   onDeleted: () {
        //                     setState(() {
        //                       _isDeleted2 = true;
        //                     });
        //                   },
        //                 ),
        //               ),
        //         // Chip(
        //         //   materialTapTargetSize:
        //         //       MaterialTapTargetSize.shrinkWrap,
        //         //   deleteIcon: CircleAvatar(
        //         //     backgroundColor: Colors.white,
        //         //     child: Icon(
        //         //       Icons.close,
        //         //       size: 15,
        //         //     ),
        //         //   ),
        //         //   backgroundColor: Color.fromARGB(255, 145, 142, 142),
        //         //   label: Text(
        //         //     "مشاهدة الأفلام",
        //         //     style: TextStyle(color: Colors.white),
        //         //   ),
        //         //   onDeleted: () {
        //         //     setState(() {
        //         //       _isDeleted3 = true;
        //         //     });
        //         //   },
        //         // ),
        //       ],
        //     ),
        //   ),
        // ),
        SizedBox(height: 5.h),
        Directionality(
            textDirection: TextDirection.rtl,
            child: Row(children: [
              ImageIcon(
                AssetImage("assets/icon/13.png"),
                size: 50,
                color: basicPink,
              ),
              Text(
                'نبذه عن شريك حياتي',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
            ])),
        SizedBox(
          height: 15.h,
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextField(
              maxLines: 5,
              minLines: 1,
              // onChanged: (value) {
              //   setState(() {
              //     _enteredText = value;
              //   });
              //  _enteredText = value;

              //   Provider.of<InfoProvider>(context, listen: false)
              //       .rebuild();
              // },
              // maxLength: 50,
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 70.h, horizontal: 10.w),
                // counterText:
                //     '${_enteredText.length.toString()} character(s)',
                hintText: 'بنت ملتزمة أخلاقيا و دينيا',
                hintStyle: TextStyle(fontSize: 14.sp),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: grey, width: 2.w),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: grey, width: 2.w),
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                ),

                // border: OutlineInputBorder(
                //   // borderSide: BorderSide(color: Colors.yellow, width: 3),
                //   borderRadius: BorderRadius.all(Radius.circular(15.0)),
                // ),
              ),
            ),
          ),
        ),
        // Expanded(
        // child:
        //  SizedBox(
        //   height: 45.h,
        // ),
        //),
        Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Row(children: [
            Expanded(
              flex: 5,
              child: SizedBox(
                width: double.infinity,
                height: 54.h,
                child: TextButton(
                  child: Text('تأكيد',
                      style: TextStyle(
                        color: white,
                        fontSize: 16.sp,
                      )),
                  style: TextButton.styleFrom(
                    backgroundColor: basicPink,
                    // primary: Colors.teal,
                    // onSurface: Colors.yellow,
                    // side: BorderSide(color: Colors.teal, width: 2),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  onPressed: () {
                    //  _updateProgress(context);
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) =>
                    //             BirthDateInfo(progress: _progressValue)));
                  },
                ),
              ),
            ),
            SizedBox(
              width: 15.h,
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                    color: mgrey,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const ImageIcon(
                  AssetImage("assets/icon/9.png"),
                  size: 50,
                  color: white,
                ),
              ),
            ),
          ]),
        ),

        SizedBox(
          height: 15.h,
        )
      ]),
    );
  }
}
