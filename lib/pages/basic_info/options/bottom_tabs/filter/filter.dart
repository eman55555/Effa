import 'package:effah/pages/basic_info/options/bottom_tabs/filter/filter_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';

class Filter extends StatelessWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bGround,
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 25.0.h),
        child: Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Row(children: [
              SizedBox(
                width: 20.w,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 100.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), color: red),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Image(
                        image: AssetImage("././assets/icon/filter_icon.png"),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "150",
                        style: TextStyle(
                            color: white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            const Image(image: AssetImage("././assets/image/filter.png")),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.0.w),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: basicPink,
                      width: 2.w,
                    )),
                child: TextButton(
                  
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage("././assets/icon/filter_icon.png"),
                          width: 30,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "100",
                          style: TextStyle(
                              color: basicPink,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "اتاحة الفلتر لمدة7أيام  ",
                          style: TextStyle(
                              color: basicPink,
                          
                              fontSize: 14.sp),
                        ),
                        Image(
                          image: AssetImage("././assets/icon/tab3.png"),
                          color: basicPink,
                          width: 30,
                        ),
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30.0.w),
              child: Container(
                decoration: BoxDecoration(
                    color: basicPink,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: basicPink,
                      width: 2.w,
                    )),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FilterOptions()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage("././assets/icon/filter_icon.png"),
                          width: 30,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "150",
                          style: TextStyle(
                              color: white,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "اتاحة الفلتر لمدة15أيام  ",
                          style: TextStyle(
                              color: white,
                              fontSize: 14.sp),
                        ),
                        Image(
                          image: AssetImage("././assets/icon/tab3.png"),
                          color: white,
                          width: 30,
                        ),
                      ],
                    )),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
