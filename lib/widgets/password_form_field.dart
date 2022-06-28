// ignore_for_file: must_be_immutable, library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../../app_theme.dart';

class PasswordFormField extends StatefulWidget {
  TextEditingController controller = TextEditingController();
  final String? hintText;
  final String? Function(String?)? validator;
  bool secure = true;
  final String? label;

  PasswordFormField(
      {required this.controller,
      this.hintText,
      this.label,
      this.validator,
      Key? key})
      : super(key: key);

  @override
  _PasswordFormFieldState createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
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
            obscureText: widget.secure,
            onSaved: (newValue) => widget.controller.text = newValue!,
            controller: widget.controller,
            decoration: InputDecoration(
              hintText: widget.hintText!,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              suffix: GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.secure = !widget.secure;
                    });
                  },
                  child: widget.secure == false
                      ? const Icon(
                          Icons.visibility,
                          color: AppTheme.primaryColor,
                        )
                      : const Icon(
                          Icons.visibility_off,
                          color: AppTheme.primaryColor,
                        )),
            ),
            validator: widget.validator!,
          ),
        ]);
  }
}
