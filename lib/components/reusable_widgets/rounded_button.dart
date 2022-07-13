import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton(
      {Key? key,
      required this.mywidget,
      required this.raduis,
      required this.myfun,
       //this.width=double.minPositive,
      required this.color})
      : super(key: key);

  final Function() myfun;
  final double raduis;
  final Widget mywidget;
  final Color color;
  // final double width;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: mywidget,
        style: TextButton.styleFrom(
          backgroundColor: color,
          // primary: Colors.teal,
          // onSurface: Colors.yellow,
          // side: BorderSide(color: Colors.teal, width: 2),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
        ),
        onPressed: myfun
        // () {
        //   Navigator.push(
        //       context, MaterialPageRoute(builder: (context) => const PinPage()));

        //   // model.authenticate(AppData(
        //   //     id: "id1",
        //   //     displayName: "ahmed",
        //   //     token: "token",
        //   //     phone: "0120202020",
        //   //     isCompleted: false,
        //   //     isVerfied: false));
        // },
        );
  }
}
