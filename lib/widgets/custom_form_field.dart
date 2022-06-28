// ignore_for_file: must_be_immutable

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:test_1/app_theme.dart';

class CustomFormField extends StatefulWidget {
  final String? hintText;
  final String? label;
  TextEditingController? controller = TextEditingController();
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  Widget? suffixIcon = Container();
  Widget? prefixIcon = Container();
  final bool readOnly;
  final bool isPhone;

  CustomFormField({
    this.controller,
    this.hintText,
    this.validator,
    this.keyboardType,
    this.suffixIcon,
    this.prefixIcon,
    this.readOnly = false,
    this.isPhone = false,
    Key? key,
    this.label,
  }) : super(key: key);

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 12,
        ),
        widget.label != null
            ? Text(
                widget.label!,
                style: AppTheme.hintText.copyWith(fontSize: 18),
              )
            : const SizedBox(),
        const SizedBox(height: 5.0),
        TextFormField(
            readOnly: widget.readOnly,
            controller: widget.controller,
            keyboardType: widget.keyboardType!,
            onSaved: (newValue) => widget.controller!.text = newValue!,
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: AppTheme.hintColor),
                gapPadding: 10,
              ),
              hintText: widget.hintText!,
              suffixIcon: widget.suffixIcon,
              prefixIcon: widget.isPhone
                  ? CountryCodePicker(
                      showFlag: false,
                      onChanged: print,
                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                      initialSelection: 'eg',
                      favorite: const ['+20', 'sa'],
                      // optional. Shows only country name and flag
                      showCountryOnly: false,
                      // optional. Shows only country name and flag when popup is closed.
                      showOnlyCountryWhenClosed: false,
                      // optional. aligns the flag and the Text left
                      alignLeft: false,
                    )
                  : widget.prefixIcon,
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
            validator: widget.validator),
      ],
    );
  }
}
