import 'package:effah/modules/app/app_repository.dart';
import 'package:effah/modules/app/app_storage.dart';
import 'package:effah/modules/app/effa_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await ScreenUtil.ensureScreenSize();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(EffaApp(
    repository: AppRepository(
      KeyValueStorage(
        await SharedPreferences.getInstance(),
      ),
    ),
  ));
}
