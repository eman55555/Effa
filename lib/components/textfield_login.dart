import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldLogin extends StatelessWidget {
  final TextEditingController? phoneController;
  final TextEditingController? controller;
   final String? Function(String?)? validator;
  // GlobalKey<FormState> form = GlobalKey<FormState>();
  TextFieldLogin({
    Key? key,
    this.phoneController,
    this.controller,
    this.validator
  }) : super(key: key);

  // String? get _errorText {
  //   // at any time, we can get the text from _controller.value.text
  //   final text = controller!.value.text;
  //   // Note: you can do your own custom validation here
  //   // Move this logic this outside the widget for more testable code
  //   if (text.isEmpty) {
  //     return 'Can\'t be empty';
  //   }
  //   if (text.length < 14) {
  //     return 'Too short';
  //   }
  //   // return null if the text is valid
  //   return null;
  // }

  // String validatePassword(String value) {
  //   if (!(value.length > 5) && value.isNotEmpty) {
  //     return "Password should contain more than 5 characters";
  //   }
  //   return "";
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: TextFormField(
              controller: phoneController,
              enabled: false,
              decoration: const InputDecoration(
                border: InputBorder.none,

                filled: false,
                // labelText: 'code',
              ),
            ),
          ),
          flex: 1,
        ),
        const SizedBox(height: 25, child: VerticalDivider(color: Colors.black)),
        Expanded(
          child: TextFormField(
            controller: controller,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            // validator:  (text) {
            //       if (!(text!.length > 5) && text.isNotEmpty) {
            //         return "Enter valid name of more then 5 characters!";
            //       }
            //       return null;
            //     },
            keyboardType: TextInputType.number,
            // maxLength: 10,
            validator: validator,
            decoration: InputDecoration(
              border: InputBorder.none,
              // errorText: _errorText,

              filled: false,
              // labelText: 'mobile',
              hintText: "1234567890",
              // prefixIcon: Icon(Icons.mobile_screen_share),
            ),
            // onSaved: (String? value) {},
          ),
          flex: 5,
        ),
      ],
    );
  }
}
