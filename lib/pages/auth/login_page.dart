import 'package:effah/components/dropdwon_login.dart';
import 'package:effah/components/textfield_login.dart';
import 'package:effah/constants.dart';
import 'package:effah/modules/app/app_state_model.dart';
import 'package:effah/pages/auth/pin_page.dart';
import 'package:effah/xd/XDiPhoneXXS11Pro3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import '../../components/reusable_widgets/rounded_button.dart';
import '../../components/reusable_widgets/rounded_card.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static final List<CountryModel> _dropdownItems = [];

  // var controller =  MaskedTextController(mask: '(000) 000 0000');
  CountryModel? _dropdownValue;
  String? _errorText;
  TextEditingController phoneController = TextEditingController();
  final _controller = TextEditingController();
  GlobalKey<FormState> form = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    setState(() {
      _dropdownItems.add(CountryModel(country: 'Egypt', countryCode: '+20'));
      _dropdownItems.add(CountryModel(country: 'USA', countryCode: '+1'));
      _dropdownValue = _dropdownItems[0];
      phoneController.text = _dropdownValue!.countryCode!;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // final _form = GlobalKey<FormState>();
  // void _saveForm() {
  //   final isValid = _form.currentState!.validate();
  //   if (!isValid) {
  //     return;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<AppStateProvider>(context, listen: false);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: transparnt,
      ),
      body: Form(
        key: form,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Image.asset(
              "assets/image/logo.png",
              width: MediaQuery.of(context).size.width / 3,
            ),
            Padding(padding: EdgeInsets.only(bottom: 20.h)),
            Text(
              'تسجيل الدخول',
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Image.asset(
                "assets/image/line.png",
                // width:  MediaQuery.of(context).size.width/4,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: RoundedCard(
                  width: MediaQuery.of(context).size.width * .8,
                  height: MediaQuery.of(context).size.height / 7,
                  mywidget: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DropdwonLogin(
                        errorText: _errorText,
                        dropdownValue: _dropdownValue,
                        phoneController: phoneController,
                        onChanged: (CountryModel? newValue) {
                          setState(() {
                            _dropdownValue = newValue;
                            phoneController.text = _dropdownValue!.countryCode!;
                          });
                        },
                        dropdownItems: _dropdownItems,
                      ),
                      Expanded(
                        child: TextFieldLogin(
                          // form: form,
                          validator: (text) {
                            if (text!.isEmpty ) {
                              return "Enter a valid number ";
                            }
                            return null;
                          },
                          phoneController: phoneController,
                          controller: _controller,
                        ),
                      )
                    ],
                  )),
            ),

            SizedBox(
              //height: 44.h,
              width: 148.w,
              child: RoundedButton(
                color: basicPink,
                mywidget: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Text('دخول',
                      style: TextStyle(
                          color: white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.normal)),
                ),
                raduis: 10,
                myfun: () {
                  if (!form.currentState!.validate()) {
                    return;
                  }
                  //  return SnackBar(content: Text("data"));

                  // _controller.value.text.isNotEmpty
                  // ?
                  // _saveForm();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const PinPage()));
                  // : null;
                  //     // model.authenticate(AppData(
                  //     //     id: "id1",
                  //     //     displayName: "ahmed",
                  //     //     token: "token",
                  //     //     phone: "0120202020",
                  //     //     isCompleted: false,
                  //     //     isVerfied: false));
                },
              ),
            ),
            // TextButton(
            //   child: const Padding(
            //     padding: EdgeInsets.only(left: 40.0, right: 40.0),
            //     child: Text('دخول',
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 18,
            //             fontWeight: FontWeight.w500)),
            //   ),
            //   style: TextButton.styleFrom(
            //     backgroundColor: const Color(0xffff8297),
            //     // primary: Colors.teal,
            //     // onSurface: Colors.yellow,
            //     // side: BorderSide(color: Colors.teal, width: 2),
            //     shape: const RoundedRectangleBorder(
            //         borderRadius: BorderRadius.all(Radius.circular(10))),
            //   ),
            //   onPressed: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => const PinPage()));

            //     // model.authenticate(AppData(
            //     //     id: "id1",
            //     //     displayName: "ahmed",
            //     //     token: "token",
            //     //     phone: "0120202020",
            //     //     isCompleted: false,
            //     //     isVerfied: false));
            //   },
            // ),
            SizedBox(
              height: 10.h,
            ),
            // Spacer(),
            Container(
              alignment: Alignment.center, // use aligment
              child: Image.asset(
                'assets/image/wedding.png',
                width: 321.06.w,
                // width: double.infinity,
                //height: 173.13.h,
                fit: BoxFit.fill,
              ),
            ),
            // const SizedBox(
            //   height: 5,
            // )
          ],
        ),
      ),
    );
  }
}

class CountryModel {
  String? country = '';
  String? countryCode = '';

  CountryModel({
    this.country,
    this.countryCode,
  });
}
