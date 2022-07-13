import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  const RoundedCard(
      {Key? key,
      required this.width,
      required this.height,
      required this.mywidget})
      : super(key: key);
  final double width, height;
  final Widget mywidget;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(width: width, height: height, child: mywidget
            //  Column(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     DropdwonLogin(
            //       errorText: _errorText,
            //       dropdownValue: _dropdownValue,
            //       phoneController: phoneController,
            //       onChanged: (CountryModel? newValue) {
            //         setState(() {
            //           _dropdownValue = newValue;
            //           phoneController.text = _dropdownValue!.countryCode!;
            //         });
            //       },
            //       dropdownItems: _dropdownItems,
            //     ),
            //     TextFieldLogin(
            //       phoneController: phoneController,
            //     )
            //   ],
            // ),
            ),
      ),
    );
  }
}
// Widget _roundedCard(double width , double height ,Widget mywidget ) => Card(
//       shape: RoundedRectangleBorder(
//         side: const BorderSide(color: Colors.white70, width: 1),
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: SizedBox(
//         //color: Colors.black12,
//         width: width,
//         //MediaQuery.of(context).size.width * .8,
//         height: height,
//         //MediaQuery.of(context).size.height / 7,

//         child:mywidget
//         //  Column(
//         //   crossAxisAlignment: CrossAxisAlignment.center,
//         //   mainAxisAlignment: MainAxisAlignment.center,
//         //   children: [
//         //     DropdwonLogin(
//         //       errorText: _errorText,
//         //       dropdownValue: _dropdownValue,
//         //       phoneController: phoneController,
//         //       onChanged: (CountryModel? newValue) {
//         //         setState(() {
//         //           _dropdownValue = newValue;
//         //           phoneController.text = _dropdownValue!.countryCode!;
//         //         });
//         //       },
//         //       dropdownItems: _dropdownItems,
//         //     ),
//         //     TextFieldLogin(
//         //       phoneController: phoneController,
//         //     )
//         //   ],
//         // ),
//       ),
//     );
