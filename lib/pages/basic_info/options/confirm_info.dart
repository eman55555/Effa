import 'dart:convert';
import 'dart:io';

import 'package:effah/constants.dart';
import 'package:effah/modules/app/app_state_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import '../../../modules/basic_info_provider.dart';
import '../birthdate_info.dart';

bool pressed1 = false;
bool pressed2 = false;
bool pressed3 = false;

class ConfirmInfo extends StatefulWidget {
  ConfirmInfo({Key? key, required this.progress}) : super(key: key);
  late double progress;

  @override
  State<ConfirmInfo> createState() => _ConfirmInfoState();
}

class _ConfirmInfoState extends State<ConfirmInfo> {
  bool press = false;
  late double _progressValue = widget.progress;
  late File image1 = File("");
  // late File image1c = File("");
  late File image2 = File("");
  late File image3 = File("");
  // late File image= File("");
  //final picker = ImagePicker();
  // File _image = File("");
  

   Future _pickImageCamera1() async {
    // try {
    //   final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    //   if (image == null) return;
    //   final imageTemp = File(image.path);
    //   setState(() => this.image = imageTemp);
    // } on PlatformException catch (e) {
    //   print('Failed to pick image: $e');
    // }

    try {
      final pickedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
     
      // if (pickedImage != null) return;
      final pickedImageFile = File(pickedImage!.path);
    
      setState(() {
        image1 = pickedImageFile;
       
        //press = true;
        pressed1 = true;
      });
    } on PlatformException catch (e) {
     // print("Failed to Pick Image :$e");
    }

    //prefs.setString('stringValue', "the path to the new image");
  }

   Future _pickImageCamera1c() async {
    try {
     
      final pickedImagec =
          await ImagePicker().pickImage(source: ImageSource.camera);
      // if (pickedImage != null) return;
     
      final pickedImageFilec = File(pickedImagec!.path);
      setState(() {
     
        this.image1 = pickedImageFilec;
        //press = true;
        pressed1 = true;
      });
    } on PlatformException catch (e) {
     // print("Failed to Pick Image :$e");
    }
  }

  //
   Future _pickImageCamera2() async {
   
    try {
      final pickedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
     
      // if (pickedImage != null) return;
      final pickedImageFile = File(pickedImage!.path);
    
      setState(() {
        image2 = pickedImageFile;
       
        //press = true;
        pressed2 = true;
      });
    } on PlatformException catch (e) {
     // print("Failed to Pick Image :$e");
    }
  }

   Future _pickImageCamera2c() async {
    try {
     
      final pickedImagec =
          await ImagePicker().pickImage(source: ImageSource.camera);
      // if (pickedImage != null) return;
     
      final pickedImageFilec = File(pickedImagec!.path);
      setState(() {
     
        this.image2 = pickedImageFilec;
        //press = true;
        pressed2 = true;
      });
    } on PlatformException catch (e) {
     // print("Failed to Pick Image :$e");
    }
  }
  //
   Future _pickImageCamera3() async {
    try {
      final pickedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);
     
      // if (pickedImage != null) return;
      final pickedImageFile = File(pickedImage!.path);
    
      setState(() {
        image3= pickedImageFile;
       
        //press = true;
        pressed3 = true;
      });
    } on PlatformException catch (e) {
     // print("Failed to Pick Image :$e");
    }
  }

   Future _pickImageCamera3c() async {
    try {
     
      final pickedImagec =
          await ImagePicker().pickImage(source: ImageSource.camera);
      // if (pickedImage != null) return;
     
      final pickedImageFilec = File(pickedImagec!.path);
      setState(() {
     
        this.image3 = pickedImageFilec;
        //press = true;
        pressed3 = true;
      });
    } on PlatformException catch (e) {
     // print("Failed to Pick Image :$e");
    }
  }

  

  @override
  Widget build(BuildContext context) {
    // final model = Provider.of<AppStateProvider>(context, listen: false);
    TextEditingController firstName = TextEditingController();
    TextEditingController secondName = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: transparnt,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(children: [
          Directionality(
            textDirection: TextDirection.rtl,
            child: Row(children: [
              ImageIcon(
                AssetImage("assets/icon/nextto.png"),
                size: 50,
                color: basicPink,
              ),
              Text(
                'تأكيد بياناتي',
                // textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
          SizedBox(
            height: 25.h,
          ),
          Directionality(
              textDirection: TextDirection.rtl,
              child: Row(children: [
                ImageIcon(
                  AssetImage("assets/icon/pic.png"),
                  size: 50,
                  color: basicPink,
                ),
                Text(
                  'صور الهوية الشخصية ',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
              ])),

          // TextButton(
          //   onPressed: _pickImageCamera,
          //   child: Container(
          //     color: Colors.transparent,
          //     height: 100,
          //     width: 100,
          //     child: image != (null)
          //         ? Image.file(image)
          //         : ImageIcon(
          //             AssetImage("assets/icon/img.png"),
          //             size: 50,
          //             color: Colors.black,
          //           ),
          //   ),
          // ),

          Row(children: [
            // Stack(
            //   children: <Widget>[
            //     Container(
            //       height: 100,
            //       margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
            //       padding: EdgeInsets.only(bottom: 10),
            //       decoration: BoxDecoration(
            //         border:
            //             Border.all(color: const Color(0xffff8297), width: 1),
            //         borderRadius: BorderRadius.circular(5),
            //         shape: BoxShape.rectangle,
            //       ),
            //       child: TextButton(
            //           onPressed: _pickImageCamera,
            //           child: image != (null)
            //               ? ImageIcon(
            //                   AssetImage("assets/icon/img.png"),
            //                   size: 90,
            //                   color: Colors.grey,
            //                 )
            //               : Container(child: Image.file(image))),
            //     ),
            //     Positioned(
            //         left: 50,
            //         top: 12,
            //         child: Container(
            //           padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
            //           color: Color.fromARGB(255, 255, 253, 253),
            //           child: Text(
            //             'الصورة الأمامية',
            //             style: TextStyle(
            //                 color: const Color(0xffff8297), fontSize: 16),
            //           ),
            //         )),
            //   ],
            // ),

            Expanded(
                child: uploadPic(
                    // _pickImageCamera1,
         _pickImageCamera1,
           
                _pickImageCamera1c,
        
           
                    'الصورة الخلفية',
                    image1,
                    image1 != null
                     && (pressed1)
                        ? Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Image.file(
                              image1,
                              fit: BoxFit.fill,
                            ),
                          )
                        : Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: ImageIcon(
                              AssetImage("assets/icon/img.png"),
                              size: 180,
                              color: grey,
                            ),
                          ),
                    context)),

            Expanded(
                child: uploadPic(
                    // _pickImageCamera2,
                _pickImageCamera2,
           
                _pickImageCamera2c,
                    'الصورة الأمامية',
                    image2,
                    image2 != null && (pressed2)
                        ? Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: Image.file(
                              image2,
                              fit: BoxFit.fill,
                            ),
                          )
                        : Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: ImageIcon(
                              AssetImage("assets/icon/img.png"),
                              size: 180,
                              color: grey,
                            ),
                          ),
                    context)),
          ]),

          SizedBox(
            height: 25.h,
          ),

          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 30.w, left: 10.w),
                  child: Divider(
                    thickness: 1.w,
                    color: black,
                  ),
                ),
              ),
              Text(
                "او",
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 10.w, left: 30.w),
                  child: Divider(
                    thickness: 1.w,
                    color: black,
                  ),
                ),
              ),
            ],
          ),
          Directionality(
              textDirection: TextDirection.rtl,
              child: Row(children: [
                ImageIcon(
                  AssetImage("assets/icon/pic.png"),
                  size: 50,
                  color: basicPink,
                ),
                Text(
                  'صور جواز السفر',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
              ])),

          Expanded(
            child: uploadPic(
              _pickImageCamera3,
                _pickImageCamera3c,
                ' صورة جواز السفر',
                image3,
                image3 != null && (pressed3)
                    ? Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: Image.file(
                          image3,
                          fit: BoxFit.fill,
                        ),
                      )
                    : Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: ImageIcon(
                          AssetImage("assets/icon/img.png"),
                          size: 180,
                          color: grey,
                        ),
                      ),
                context),
          ),

          // TextButton(
          //     onPressed: _pickImageCamera,
          //     child: Container(
          //       color: Colors.grey,
          //       height: 100,
          //       width: 100,
          //       child: image == (null) && press == false
          //           ? Image.file(image)
          //           : const ImageIcon(
          //               AssetImage("assets/icon/img.png"),
          //               size: 90,
          //               color: Colors.black,
          //             ),
          //     )
          //)
          // : Container(
          //     color: Color.fromARGB(255, 212, 23, 23),
          //     height: 400,
          //     width: 100,
          //     child: ImageIcon(
          //       AssetImage("assets/icon/img.png"),
          //       size: 90,
          //       color: Colors.black,
          //     ),
          //   )

          // ),
          // : Container(
          //     color: Colors.grey,
          //     height: 100,
          //     width: 100,
          //     child: Text("No data"),
          //   ),
          // const Expanded(flex: 4, child: SizedBox()),
          Row(children: [
            Expanded(
              flex: 5,
              // width: double.infinity,
              //height: 44.h,
              child: TextButton(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.h),
                  child: Text('تأكيد',
                      style: TextStyle(
                          color: white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500)),
                ),
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

          SizedBox(
            height: 20.h,
          )
        ]),
      ),
    );
  }
}

Widget uploadPic(
Function  _pick ,
Function _pickc,
 String txt, File image, Widget btn,
    BuildContext context) {
  return Stack(
    children: <Widget>[
      Container(
        height: 113.h,
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(6.w, 20.h, 6.w, 10.h),
        padding: EdgeInsets.only(bottom: 10.h),
        decoration: BoxDecoration(
          border: Border.all(color: basicPink, width: 1.w),
          borderRadius: BorderRadius.circular(10),
          shape: BoxShape.rectangle,
        ),
        child: TextButton(
            onPressed: () {
              //
              //picImage();
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return bottomSheet(context, _pick ,_pickc);
                  });
            },
            child: btn
            //// ! pressed
            // image != null && ( pressed1  ||
            //  pressed2 || pressed3)
            //     ?   Padding(
            //       padding: EdgeInsets.only(top: 10.h),
            //       child: Image.file(image , fit: BoxFit.fill,

            //       ),
            //     )
            //     : Padding(
            //         padding: EdgeInsets.only(top: 20.h),
            //         child: ImageIcon(
            //           AssetImage("assets/icon/img.png"),
            //           size: 180,
            //           color: grey,
            //         ),
            //       )
            ),
      ),
      Positioned(
          right: 20.w,
          top: 12.h,
          child: Container(
            padding: EdgeInsets.only(bottom: 0.h, left: 10.w, right: 10.w),
            color: light,
            child: Text(
              txt,
              style: TextStyle(color: basicPink, fontSize: 12.sp),
            ),
          )),
    ],
  );
}

Widget bottomSheet(BuildContext context, Function  fun, Function  func) {
  return Container(
    height: 100.0,
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 20,
    ),
    child: Column(
      children: <Widget>[
        Text(
          "Choose Profile photo",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.camera),
            onPressed: () {
              // takePhoto(ImageSource.camera);
              func();
            },
            label: Text("Camera"),
          ),
          FlatButton.icon(
            icon: Icon(Icons.image),
            onPressed: () {
              // takePhoto(ImageSource.gallery);
              fun();
            },
            label: Text("Gallery"),
          ),
        ])
      ],
    ),
  );
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}

// void _updateProgress(BuildContext context) {
//   _progressValue += 0.1;
//   Provider.of<InfoProvider>(context, listen: false).rebuild();
// }
