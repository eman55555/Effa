import 'dart:convert';

import 'package:effah/modules/app/app_entity.dart';

import 'package:shared_preferences/shared_preferences.dart';

class KeyValueStorage {
  final SharedPreferences store;
  final JsonCodec codec;

  const KeyValueStorage(this.store, [this.codec = json]);

  //convert object to json then json to string
  AppData? getAppData() {
    var data = store.getString("data");
    return data == null ? null : AppData.fromJson(codec.decode(data));
  }

  Future<bool> setAppData(AppData appData) {
    // ignore: unnecessary_null_comparison
    if (appData == null) {
      return store.remove("data");
    }
    String data = codec.encode(appData.toJson());
    return store.setString("data", data);
  }
}
