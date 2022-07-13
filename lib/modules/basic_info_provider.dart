import 'package:flutter/material.dart';

class InfoProvider with ChangeNotifier {
  bool isMale = false;
  bool loading = false;
  double progressValue = 0.2;
  bool press = false;
bool pressed1 = false;
bool pressed2= false;
  void updateProgress(double prog) {
    prog += 0.2;
    notifyListeners();
  }

  void removeProgress(double prog) {
     prog += 0.2;
    notifyListeners();
  }

  void rebuild() {
    notifyListeners();
  }

  void rebuild2() {
    press = !press;
    notifyListeners();
  }
}
