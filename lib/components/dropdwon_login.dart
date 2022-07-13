import 'package:effah/pages/auth/login_page.dart';
import 'package:flutter/material.dart';

class DropdwonLogin extends StatelessWidget {
  final CountryModel? dropdownValue;
  final TextEditingController? phoneController;
  final Function(CountryModel?)? onChanged;
  final String? errorText;

  final List<CountryModel>? dropdownItems;

  const DropdwonLogin(
      {Key? key,
      this.dropdownValue,
      this.onChanged,
      this.errorText,
      this.phoneController,
      this.dropdownItems})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FormField(
      builder: (FormFieldState state) {
        return DropdownButtonHideUnderline(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Column(
              children: <Widget>[
                InputDecorator(
                  decoration: InputDecoration(
                    filled: false,
                    hintText: 'Choose Country',
                    prefixIcon: const Icon(Icons.flag),
                    errorText: errorText,
                  ),
                  isEmpty: dropdownValue == null,
                  child: DropdownButton<CountryModel>(
                    value: dropdownValue,
                    isDense: true,
                    onChanged: onChanged,
                    items: dropdownItems!.map((CountryModel value) {
                      return DropdownMenuItem<CountryModel>(
                        value: value,
                        child: Text(value.country!),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
