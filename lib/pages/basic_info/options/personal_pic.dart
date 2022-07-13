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

class PersonalPic extends StatefulWidget {
  PersonalPic({Key? key, required this.progress}) : super(key: key);
  late double progress;

  @override
  State<PersonalPic> createState() => _PersonalPicState();
}

class _PersonalPicState extends State<PersonalPic> {
  // bool press = false;
  // late double _progressValue = widget.progress;
  // late File image = File('');
  // final picker = ImagePicker();

  // void _pickImageCamera() async {
  //   final pickedImage = await picker.getImage(source: ImageSource.gallery);
  //   final pickedImageFile = File(pickedImage!.path);
  //   setState(() {
  //     image = pickedImageFile;
  //     press = true;
  //   });

  //   //prefs.setString('stringValue', "the path to the new image");
  // }

  late File image1 = File("");
  // late File image1c = File("");
  late XFile image2 = XFile("");
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

  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? imageFileList = [];

  void selectImages() async {
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList!.addAll(selectedImages);
    }
    // imageFileList!.insert(index, selectedImages);
    // print("Image List Length:" + imageFileList!.length.toString());
    pressed2 = true;
    setState(() {});
  }

  //  void selectImagesC() async {
  //   final XFile? selectedImages= await imagePicker.pickImage(source:ImageSource.camera );
  //   if (selectedImages!.isNotEmpty) {
  //     imageFileList!.addAll(selectedImages);
  //   }
  //   print("Image List Length:" + imageFileList!.length.toString());
  //   setState(() {});
  // }

  /////////////////////
  // Future _pickImageCamera2() async {
  //   try {
  //     final pickedImage =
  //         await ImagePicker().pickImage(source: ImageSource.gallery);

  //     // if (pickedImage != null) return;
  //     final pickedImageFile = File(pickedImage!.path);

  //     setState(() {
  //       image2 = pickedImageFile;

  //       //press = true;
  //       pressed2 = true;
  //     });
  //   } on PlatformException catch (e) {
  //     // print("Failed to Pick Image :$e");
  //   }
  // }

  Future _pickImageCamera2c() async {
    try {
      final pickedImagec =
          await ImagePicker().pickImage(source: ImageSource.camera);
      // if (pickedImage != null) return;

      final pickedImageFilec = XFile(pickedImagec!.path);
      setState(() {
        this.image2 = pickedImageFilec;
        imageFileList!.add(image2);
        //press = true;
        pressed2 = true;
      });
    } on PlatformException catch (e) {
      // print("Failed to Pick Image :$e");
    }
  }
  //

  @override
  Widget build(BuildContext context) {
    // final model = Provider.of<AppStateProvider>(context, listen: false);
    TextEditingController firstName = TextEditingController();
    TextEditingController secondName = TextEditingController();

    List<String> images = [
      "assets/image/pic2.png",
      "assets/image/pic1.png",
      "assets/image/addpic.png",
      "assets/image/pic5.png",
      "assets/image/pic4.png",
      "assets/image/pic3.png",
      // "assets/image/pic6.png",
      // "assets/image/pic7.png"
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: transparnt,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
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
                'الصور الشخصية',
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

          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return bottomSheet(
                        context, _pickImageCamera1, _pickImageCamera1c);
                  });
            },
            child: Stack(children: [
              SizedBox(
                width: 160.w,
                height: 160.h,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: cgrey, width: 11.w),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: cgrey,
                    child: ClipOval(
                      child: image1 != null && (pressed1)
                          ? SizedBox.fromSize(
                              size: Size.fromRadius(65.h),
                              child: Image.file(
                                image1,
                                //  fit: BoxFit.fill,
                                fit: BoxFit.cover,
                                // width: 120.h,
                                // height: 120.w,
                              ),
                            )
                          : Image.asset(
                              "assets/image/mask.png",
                              //fit: BoxFit.cover,
                              fit: BoxFit.cover,
                              //  width: 160.h,
                              //   height: 160.w,
                            ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 12.w,
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: basicPink,
                    shape: BoxShape.circle,
                  ),
                  child: ImageIcon(
                    AssetImage("assets/icon/edit.png"),
                    size: 45,
                    color: white,
                  ),
                ),
              )
            ]),
          ),
          SizedBox(
            height: 35.h,
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
                  'المزيد من الصور الشخصية',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 16.sp,
                  ),
                ),
              ])),
          SizedBox(
            height: 8.h,
          ),
          InkWell(
            onTap: () {
              if (imageFileList!.length < 6) {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return bottomSheet(
                          context, selectImages, _pickImageCamera2c);
                    });
              }

              // showModalBottomSheet(
              //     context: context,
              //     builder: (context) {
              //       return bottomSheet(
              //           context, _pickImageCamera2, _pickImageCamera2c);
              //     });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 12, bottom: 12),
              child: Align(
                  alignment: Alignment.topRight,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: Image.asset("assets/image/addpic.png"))),
            ),
          ),
          Expanded(
            flex: 2,
            child:
                // GridView.count(
                //   crossAxisCount: 3,
                //   // crossAxisSpacing: 160,
                //   // childAspectRatio: 3,
                //   children: images.map((value) {
                //     return Container(child: Image.asset(value));
                //     // Container(
                //     //   alignment: Alignment.center,
                //     //   margin: EdgeInsets.all(8),
                //     //   decoration: BoxDecoration(
                //     //     border: Border.all(color: Colors.black),
                //     //   ),
                //     //child:
                //   }).toList(),
                // ),
                Directionality(
              textDirection: TextDirection.rtl,
              child: GridView.builder(
                  itemCount: imageFileList!.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(7),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(13),
                        child: InkWell(
                            onTap: () {
                              // imageFileList![index]
                              //     .saveTo(imageFileList![index].path);
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return bottomSheet(context, selectImages,
                                        _pickImageCamera2c);
                                  });
                              // if( imageFileList!.length <= 6 ){
                                print("index");
                              print(index);
                              imageFileList!.removeAt(index);
                              imageFileList!
                                  .insert(index, imageFileList![index]);

                              // }
                            },
                            child: Image.file(
                              File(imageFileList![index].path),
                              // String path = imageFileList![index].path;

                              fit: BoxFit.cover,
                            )),
                      ),
                    );
                  }),
            ),
          ),

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

          // Expanded(
          //     child: uploadPic(_pickImageCamera, ' صورة جواز السفر', image)),

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
          SizedBox(
            width: 343.w,
            //  width: double.infinity,
            height: 44.h,
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

          SizedBox(
            height: 15.h,
          )
        ]),
      ),
    );
  }
}

Widget bottomSheet(BuildContext context, Function fun, Function func) {
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

// Widget uploadPic(Function picImage, String txt, File image) {
//   return Stack(
//     children: <Widget>[
//       Container(
//         height: 104,
//         width: double.infinity,
//         margin: EdgeInsets.fromLTRB(6, 20, 6, 10),
//         padding: EdgeInsets.only(bottom: 10.h),
//         decoration: BoxDecoration(
//           border: Border.all(color: basicPink, width: 1.w),
//           borderRadius: BorderRadius.circular(10),
//           shape: BoxShape.rectangle,
//         ),
//         child: TextButton(
//             onPressed: () {
//               picImage;
//             },
//             child: image != (null)
//                 ? Padding(
//                     padding: const EdgeInsets.only(top: 20),
//                     child: ImageIcon(
//                       AssetImage("assets/icon/img.png"),
//                       size: 180,
//                       color: grey,
//                     ),
//                   )
//                 : Container(child: Image.file(image))),
//       ),
//       Positioned(
//           left: 50,
//           top: 12,
//           child: Container(
//             padding: EdgeInsets.only(bottom: 0, left: 10, right: 10),
//             color: Color.fromARGB(255, 255, 253, 253),
//             child: Text(
//               txt,
//               style: TextStyle(color: basicPink, fontSize: 16),
//             ),
//           )),
//     ],
//   );
// }

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}

// void _updateProgress(BuildContext context) {
//   _progressValue += 0.1;
//   Provider.of<InfoProvider>(context, listen: false).rebuild();
// }
