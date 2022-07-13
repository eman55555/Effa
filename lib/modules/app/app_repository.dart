import 'package:effah/modules/app/app_entity.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_storage.dart';

class AppRepository {
  final KeyValueStorage store;

  AppRepository(this.store);

  AppData? loadAppData() {
    return store.getAppData();
  }

//saco
  Future setUserLang(String language) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString("lang", language);
  }

  Future<String> getUserLang() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("lang") ?? 'ar';
  }
}
