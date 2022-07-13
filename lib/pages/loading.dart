import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class AppLoading extends StatefulWidget {
  @override
  _AppLoadingState createState() => _AppLoadingState();
}

class _AppLoadingState extends State<AppLoading> {
  @override
  Widget build(BuildContext context) {
    //  WidgetsBinding.instance.addPostFrameCallback((duration) async {
    //  var token =  await NotificationRegister.registerFireBase(context);
    // });
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(
            "assets/image/logo.png",
            width: 200,
          ),
          const CircularProgressIndicator()
        ],
      )),
    );
  }
}
