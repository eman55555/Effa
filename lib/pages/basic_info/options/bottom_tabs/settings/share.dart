import 'package:effah/constants.dart';
import 'package:effah/modules/app/app_state_model.dart';
import 'package:effah/pages/basic_info/gender.dart';
import 'package:effah/pages/basic_info/options/bottom_tabs/filter/filter_options.dart';
import 'package:effah/pages/basic_info/options/message.dart';
import 'package:effah/pages/basic_info/options/bottom_tabs/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:qr_flutter/qr_flutter.dart';

// import 'painter.dart';

// ignore: use_key_in_widget_constructors
class Share extends StatelessWidget {
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
            "مشاركة التطبيق",
            style: TextStyle(
                color: black,
                //fontWeight: FontWeight.bold,
                fontSize: 20),
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
            width: 15,
          ),
        ],
        leading: Container(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Center(
          child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Directionality(
                //   textDirection: TextDirection.rtl,
                //   child: Text(
                //     "شارك التطبيق للحصول علي نقاط يمكنك استخدامها داخل التطبيق",
                //     style: TextStyle(fontSize: 20),
                //   ),
                // ),
                // // Container(
                // //   child: Column(
                // //     crossAxisAlignment: CrossAxisAlignment.center,
                // //     children: [

                // //     ],
                // //   ),
                // // ),

                // Container(
                //   // height: 300,
                //   decoration: const BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.all(Radius.circular(20)),
                //   ),
                //   child: Stack(children: [
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.stretch,
                //       children: [
                //         Directionality(
                //           textDirection: TextDirection.rtl,
                //           child: Padding(
                //             padding: const EdgeInsets.only(
                //                 top: 25, right: 40, bottom: 30),
                //             child: Row(
                //               children: [
                //                 Image.asset(
                //                   "assets/image/shar.png",
                //                   fit: BoxFit.fill,
                //                   width: 75,
                //                 ),
                //                 SizedBox(
                //                   width: 10,
                //                 ),
                //                 Column(
                //                   children: [
                //                     Text("حسام وليد"),
                //                     SizedBox(
                //                       height: 10,
                //                     ),
                //                     Text(
                //                       "948494#",
                //                       style: TextStyle(
                //                         color: Color(0xffFF8297),
                //                       ),
                //                     ),
                //                   ],
                //                 )
                //               ],
                //             ),
                //           ),
                //         ),
                //         // Container(
                //         //   margin: EdgeInsets.symmetric(horizontal: 60),
                //         //   color: Colors.black,
                //         //   height: 10.0, //height of container
                //         //   child: Center(
                //         //     child: CustomPaint(
                //         //         painter: DrawDottedhorizontalline()),

                //         //     //drawing horizontal dotted/dash line
                //         //   ),
                //         // ),
                //         Padding(
                //           padding:
                //               const EdgeInsets.symmetric(horizontal: 35.0),
                //           child: LayoutBuilder(
                //             builder: (BuildContext context,
                //                 BoxConstraints constraints) {
                //               final boxWidth = constraints.constrainWidth();
                //               final dashWidth = 5.0;
                //               final dashHeight = 5.0;
                //               final dashCount =
                //                   (boxWidth / (3 * dashWidth)).floor();
                //               return Flex(
                //                 children: List.generate(dashCount, (_) {
                //                   return SizedBox(
                //                     width: dashWidth,
                //                     height: dashHeight,
                //                     child: const DecoratedBox(
                //                       decoration: BoxDecoration(
                //                         color: Color.fromARGB(
                //                             255, 190, 188, 188),
                //                         borderRadius: BorderRadius.all(
                //                             Radius.circular(20)),
                //                       ),
                //                     ),
                //                   );
                //                 }),
                //                 mainAxisAlignment:
                //                     MainAxisAlignment.spaceBetween,
                //                 direction: Axis.horizontal,
                //               );
                //             },
                //           ),
                //         ),

                //         SizedBox(
                //           height: 40,
                //         ),
                //         Center(
                //             child: Text(
                //           "امسح الكود",
                //           style: TextStyle(
                //               fontWeight: FontWeight.bold, fontSize: 19),
                //         )),

                //         Center(
                //           child: Padding(
                //             padding: const EdgeInsets.symmetric(vertical: 20),
                //             child: QrImage(
                //               data: "1234567890",
                //               version: QrVersions.auto,
                //               size: 200.0,
                //               backgroundColor: Colors.white,
                //             ),
                //           ),
                //         ),
                //       ],
                //     ),
                //     Positioned(
                //       // left: -30,
                //       right: -40,
                //       top: -50,
                //       bottom: 0,
                //       child: CircleAvatar(
                //         backgroundColor: Color(0xffF0F0F0),
                //         radius: 30,
                //       ),
                //     ),
                //     Positioned(
                //       left: -40,
                //       // right: -50,
                //       top: -50,
                //       bottom: 0,
                //       child: CircleAvatar(
                //         backgroundColor: Color(0xffF0F0F0),
                //         radius: 30,
                //       ),
                //     ),
                //   ]),
                // ),

                // Row(
                //   children: [
                //     Expanded(
                //       child: Padding(
                //         padding: const EdgeInsets.only(right: 30, left: 10),
                //         child: Divider(
                //           thickness: 1.5,
                //           color: Color.fromARGB(255, 45, 45, 45),
                //         ),
                //       ),
                //     ),
                //     Text(
                //       "أو",
                //       style: TextStyle(
                //           fontSize: 28, fontWeight: FontWeight.bold),
                //     ),
                //     Expanded(
                //       child: Padding(
                //         padding: const EdgeInsets.only(right: 10, left: 30),
                //         child: Divider(
                //           thickness: 1.5,
                //           color: Color.fromARGB(255, 45, 45, 45),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        border: Border.all(
                          color: basicPink,
                          width: 2,
                        )),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FilterOptions()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "اضغط للمشاركة  ",
                                style: TextStyle(
                                    color: basicPink,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22),
                              ),
                              Image(
                                image: AssetImage(
                                    "././assets/icon/Mask Group 297.png"),
                                color: basicPink,
                                // width: 70,
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

// class DrawDottedhorizontalline extends CustomPainter {
//   late Paint _paint;

//   DrawDottedhorizontalline() {
//     _paint = Paint();
//     _paint.color = Color.fromARGB(255, 190, 188, 188); //dots color
//     _paint.strokeWidth = 4.5; //dots thickness
//     _paint.strokeCap = StrokeCap.round; //dots corner edges
//   }

//   @override
//   void paint(Canvas canvas, Size size) {
//     for (double i = -300; i < 300; i = i + 15) {
//       // 15 is space between dots
//       if (i % 3 == 0)
//         canvas.drawLine(Offset(i, 0.0), Offset(i + 1, 0.0), _paint);
//     }
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }
