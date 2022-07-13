import 'package:effah/modules/app/app_entity.dart';
import 'package:effah/modules/app/app_repository.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// you can move this to your utils file and use it for validation purpose ..
// bool isNullOrEmpty(dynamic val) {
//   if (val.runtimeType == String) return (val == null || val.toString().isEmpty);

//   // if (val.runtimeType == bool) return (val == null || !val);

//   return (val == null || !val);
// }

class AppStateProvider with ChangeNotifier {
  final AppRepository repository;

  AppStateProvider({
    required this.repository,
  }) {
    _appData = repository.loadAppData();
  }

  AppData? _appData;
  // bool _loading;
  // bool get loading => _loading;
  AppState get state {
    
    // print(_appData!.isVerfied);
    // print(_appData!.isCompleted);

    if (_appData == null)
      // ignore: curly_braces_in_flow_control_structures
      return AppState.unauthenticated;
    if (_appData != null && (_appData!.id == null || _appData!.id!.isEmpty))
      // ignore: curly_braces_in_flow_control_structures
      return AppState.unauthenticated;
    if (_appData!.isVerfied == false)
      // ignore: curly_braces_in_flow_control_structures
      return AppState.notVerified;
    if (_appData!.isCompleted == false)
      // ignore: curly_braces_in_flow_control_structures
      return AppState.notCompleted;

    // if (_appData.displayName) return AppState.uninitialized;

    return AppState.authenticated;
  }

  void authenticate(
    AppData data,
  ) async {
    _appData = data.copyWith(
        userId: data.id.toString(),
        name: data.displayName,
        phoneCopy: data.phone,
        emailCopy: data.email,
        tokenCopy: data.token,
        isCompleteed: data.isCompleted,
        isvervie: data.isVerfied,
        langCode: data.languageCode);
    await repository.store.setAppData(_appData!);

    notifyListeners();
  }

  void updateData(
    AppData data,
  ) async {
    _appData = _appData!.copyWith(
        userId: data.id.toString(),
        name: data.displayName,
        phoneCopy: data.phone,
        emailCopy: data.email,
        tokenCopy: data.token,
        isCompleteed: data.isCompleted,
        isvervie: data.isVerfied,
        langCode: data.languageCode);
    await repository.store.setAppData(_appData!);
    notifyListeners();
  }

  // void setSeenTutorial() async {
  //   _appData = _appData!
  //       .copyWith(seenTutorial: true, isCompleted: false, isvervie: false);
  //   await repository.store.setAppData(_appData!);
  //   notifyListeners();
  // }

  // void setIsGuestUser() async {
  //   _appData = _appData!.copyWith(
  //     isGuestUser: true,
  //     seenTutorial: true,
  //     selectLang: true,
  //   );
  //   await repository.store.setAppData(_appData!);
  //   notifyListeners();
  // }

  // Future setSelectLang() async {
  //   // ignore: unnecessary_null_comparison
  //   if (_appData == null) {
  //     _appData = AppData(isSelectLang: true);
  //   } else {
  //     _appData = _appData!.copyWith(selectLang: true);
  //   }
  //   await repository.store.setAppData(_appData!);
  //   notifyListeners();
  // }

  void verified() async {
    _appData = _appData!.copyWith(isvervie: true);
    await repository.store.setAppData(_appData!);
    notifyListeners();
  }

  void completAccount() async {
    _appData = _appData!.copyWith(
      isCompleteed: true,
    );
    await repository.store.setAppData(_appData!);
    notifyListeners();
  }

  Future unauthenticate() async {
    _appData = _appData!.copyWith(tokenCopy: "", userId: "");
    await repository.store.setAppData(_appData!);
    notifyListeners();
  }
}
