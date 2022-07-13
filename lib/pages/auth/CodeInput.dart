import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CodeInput extends StatelessWidget {
  final FocusNode ? focusNode0;
  final FocusNode ? focusNode1;
  final FocusNode ? focusNode2;

  const CodeInput({
    Key ? key,
    this.focusNode0,
    this.focusNode1,
    this.focusNode2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final bottom = MediaQuery.of(context).viewInsets.bottom;
    return Row(
      children: [
      
          
       

           SizedBox(
            width: MediaQuery.of(context).size.width * 0.063,
                
            child: TextField(
            
             //scrollPadding: EdgeInsets.only(top:10.h),
            focusNode: focusNode1,
            textAlign: TextAlign.center,
            maxLength: 1,
            onChanged: (str) {
              if (str.length == 1) {
                FocusScope.of(context).requestFocus(focusNode2);
              } else if (str.length == 0) {
                FocusScope.of(context).requestFocus(focusNode0);
              }
            },
            decoration:const InputDecoration(
              hintText: "*",
              hintStyle: TextStyle(color: Colors.grey),
              counterText: "",
            ),
              ),
                   ),
        
      ],
    );
  }
}
