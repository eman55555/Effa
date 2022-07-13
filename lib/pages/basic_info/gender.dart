import 'package:effah/constants.dart';
import 'package:effah/modules/app/app_state_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../modules/basic_info_provider.dart';
import 'naming_info.dart';

class Gender extends StatelessWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final model = Provider.of<AppStateProvider>(context, listen: false);
    Future<bool> _onWillPop() async {
      Provider.of<InfoProvider>(context, listen: false).progressValue = 0.2;
      return true;
    }

    print(Provider.of<InfoProvider>(context, listen: false).progressValue);
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: transparnt,
          // leading: IconButton(
          //     icon: Icon(Icons.arrow_back),
          //     onPressed: () {
          //       Navigator.pop(context);
          //       print("hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhi");
          //     }),
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
              ),
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
                      // semanticsValue: '1.0',
                      minHeight: 9.h,
                      backgroundColor: bgrey,
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(basicPink),
                      value: Provider.of<InfoProvider>(context, listen: false)
                          .progressValue,
                    ),
                  )),
            ),
          ),
          Center(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Text(
              'ما هو نوع المستخدم',
              style: TextStyle(fontSize: 20.sp),
            ),
          )),
          Padding(
            padding: EdgeInsets.only(top: 20.0.h, right: 15.w, left: 15.w),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Provider.of<InfoProvider>(context, listen: false).isMale =
                          true;

                      Provider.of<InfoProvider>(context, listen: false)
                              .loading =
                          !Provider.of<InfoProvider>(context, listen: false)
                              .loading;
                      Provider.of<InfoProvider>(context, listen: false)
                          .rebuild();
                      _updateProgress(context);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NamingInfo(
                                  progress: Provider.of<InfoProvider>(context,
                                          listen: false)
                                      .progressValue)));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Provider.of<InfoProvider>(context).isMale
                              ? basicPink
                              : grey,
                          width: 1.3.w,
                        ),
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        // color: Provider.of<InfoProvider>(context).isMale
                        //     ? white
                        //     : basicPink,
                      ),
                      elevation:
                          Provider.of<InfoProvider>(context).isMale ? 15 : 0,
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 15.h,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/image/female.png'),
                                height: 64.h,
                                width: 64.w,
                              ),
                              SizedBox(
                                height: 15.0.h,
                              ),
                              Text(
                                'أنثي',
                                style: TextStyle(
                                  fontSize: 16.0.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0.w,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Provider.of<InfoProvider>(context, listen: false)
                          .pressed1 = true;

                      Provider.of<InfoProvider>(context, listen: false).isMale =
                          false;

                      Provider.of<InfoProvider>(context, listen: false)
                              .loading =
                          !Provider.of<InfoProvider>(context, listen: false)
                              .loading;
                      Provider.of<InfoProvider>(context, listen: false)
                          .rebuild();
                      _updateProgress(context);

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NamingInfo(
                                  progress: Provider.of<InfoProvider>(context,
                                          listen: false)
                                      .progressValue)));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: Provider.of<InfoProvider>(context,
                                            listen: false)
                                        .pressed1 &&
                                    !Provider.of<InfoProvider>(context).isMale
                                ? basicPink
                                : grey,
                            width: 1.3.w,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        // color: Provider.of<InfoProvider>(context).isMale
                        //     ? basicPink
                        //     : white,
                      ),
                      elevation:
                          Provider.of<InfoProvider>(context, listen: false)
                                      .pressed1 &&
                                  !Provider.of<InfoProvider>(context).isMale
                              ? 15
                              : 0,
                      shadowColor: grey,
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 15.h,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/image/male.png'),
                                height: 64.h,
                                width: 64.w,
                              ),
                              SizedBox(
                                height: 15.0.h,
                              ),
                              Text(
                                'ذكر',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  void _updateProgress(BuildContext context) {
    //  Provider.of<InfoProvider>(context, listen: false).updateProgress();
    Provider.of<InfoProvider>(context, listen: false).progressValue += 0.2;
    Provider.of<InfoProvider>(context, listen: false).rebuild();
  }
}
