import 'package:flutter/material.dart';
import 'package:restorant/core/theme/colors_manager.dart';
import 'package:restorant/core/theme/text_style_manager.dart';
import 'package:restorant/core/widget/custom_text.dart';

class CustomTextFormField extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final bool isPassword;
  final TextEditingController? controller;
  const CustomTextFormField({
    super.key,
    this.hintText,
    this.labelText,
    this.controller,
    this.isPassword = false,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
        color: ColorsManager.deepRed,
        width: 3.0,
      ),
    );
    return TextFormField(
      controller: widget.controller,
      obscureText: obscureText,
      cursorColor: ColorsManager.deepRed,
      decoration: InputDecoration(
        hintText: widget.hintText,
        label: widget.labelText == null
            ? null
            : CustomText(
                text: widget.labelText!,
                style: TextStyleManager.textStyle15w500,
                color: ColorsManager.deepRed,
              ),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(
                    () {
                      obscureText = !obscureText;
                    },
                  );
                },
                icon: Icon(
                  obscureText ? Icons.remove_red_eye : Icons.visibility_off,
                  color: ColorsManager.deepRed,
                ),
              )
            : null,
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        errorBorder: outlineInputBorder,
        focusedErrorBorder: outlineInputBorder,
        disabledBorder: outlineInputBorder,
      ),
    );
  }
}
