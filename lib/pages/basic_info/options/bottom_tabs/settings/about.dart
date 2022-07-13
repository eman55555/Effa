import 'package:effah/modules/app/app_state_model.dart';
import 'package:effah/pages/basic_info/gender.dart';
import 'package:effah/pages/basic_info/options/bottom_tabs/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../../constants.dart';

// ignore: use_key_in_widget_constructors
class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<AppStateProvider>(context, listen: false);

    return Scaffold(
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
            "عن التطبيق",
            style: TextStyle(
                color: black,
                //fontWeight: FontWeight.bold,
                fontSize: 18.sp),
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
      body: Padding(
        padding:
            EdgeInsets.only(top: 20.h, bottom: 20.h, left: 10.w, right: 10.w),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 25.h, bottom: 3.h),
            child: Center(
              child: Image.asset(
                "assets/image/logo.png",
                width: 132.18.w,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: Center(
              child: Container(
                height: 578.h,
                margin: EdgeInsets.all(5.0.h),

                // adding padding
                padding: EdgeInsets.all(12.0.h),

                // height should be fixed for vertical scrolling
                // height: 120,
                decoration: BoxDecoration(

                    // adding borders around the widget
                    border: Border.all(
                        color: gGrey, width: 1.5.w, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10)),
                // SingleChildScrollView should be
                // wrapped in an Expanded Widget
                child: SafeArea(
                  child: Scrollbar(
                    isAlwaysShown: true,
                    interactive: true,
                    child: SingleChildScrollView(
                      // for Vertical scrolling
                      scrollDirection: Axis.vertical,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          "  ببساطة نص شكلي (بمعنى أن الغاية هي الشكل "
                          "و ليس المحتوى) ويُستخدم في صناعات المطابع"
                          "ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص "
                          "الشكلي منذ القرن الخامس عشر عندما قامت مطبعة "
                          "مجهولة برص مجموعة من الأحرف بشكل عشوائي"
                          "أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع "
                          "شكلي لهذه الأحرف. خمسة قرون من الزمن لم "
                          "تقضي على هذا النص، بل انه حتى صار مستخدماً "
                          "وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. "
                          "انتشر بشكل كبير في ستينيّات هذا القرن  ببساطة نص "
                          "شكلي (بمعنى أن الغاية هي الشكل وليس "
                          "المحتوى) ويُستخدم في صناعات المطابع ودور "
                          "النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي "
                          "منذ القرن الخامس عشر عندما قامت مطبعة مجهولة "
                          "برص مجموعة من الأحرف بشكل عشوائي أخذتها من "
                          " نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه "
                          "الأحرف. خمسة قرون من الزمن لم تقضي على هذا "
                          "النص، بل انه حتى صار مستخدماً وبشكله الأصلي في "
                          "الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في "
                          "ستينيّات هذا القرن  ببساطة نص شكلي (بمعنى أن "
                          "الغاية هي الشكل وليس المحتوى) ويُستخدم في "
                          "صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال "
                          "المعيار للنص الشكلي منذ القرن الخامس عشر عندما"
                          "قامت مطبعة مجهولة برص مجموعة من الأحرف "
                          "بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة "
                          "دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من "
                          "الزمن لم تقضي على هذا النص، بل انه حتى صار "
                          "مستخدماً وبشكله الأصلي في الطباعة والتنضيد "
                          "الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن",

                          //   "GeeksForGeeks is a good platform to learn programming/n."
                          //   " It is an educational website. GeeksForGeeks is a good platform to learn programming."
                          //   " It is an educational website. GeeksForGeeks is a good platform to learn programming."
                          //   " It is an educational website. GeeksForGeeks is a good platform to learn programming."
                          //   " يجب هليما اا ايففت اببف"
                          //  " It is an educational website. GeeksForGeeks is a good platform to learn programming."
                          //  " It is an educational website. GeeksForGeeks is a good platform to learn programming."
                          //  " It is an educational website. GeeksForGeeks is a good platform to learn programming."
                          //  " It is an educational website. GeeksForGeeks is a good platform to learn programming."
                          //  " It is an educational website. GeeksForGeeks is a good platform to learn programming."
                          //  " It is an educational website. GeeksForGeeks is a good platform to learn programming."
                          //  " It is an educational website. GeeksForGeeks is a good platform to learn programming."
                          //  " It is an educational website. GeeksForGeeks is a good platform to learn programming."
                          //  " It is an educational website. GeeksForGeeks is a good platform to learn programming."
                          //  " It is an educational website. GeeksForGeeks is a good platform to learn programming."
                          //  " It is an educational website. GeeksForGeeks is a good platform to learn programming."
                          //  " It is an educational website. GeeksForGeeks is a good platform to learn programming."
                          //  " It is an educational website. GeeksForGeeks is a good platform to learn programming."
                          //  " It is an educational website. GeeksForGeeks is a good platform to learn programming.",
                          style: TextStyle(
                            color: lGrey,
                            fontSize: 14.sp,
                            letterSpacing: 1,
                            wordSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
