import 'package:Worklyfe/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final String? labelText;
  final Function? valueCallBack;
  final Color? focusBorderColor;
  final double? focusBorderRadius;
  final Color? prefixIconColor;
  final double? focusBorderWidth;
  final TextStyle? labelStyle;
  const AppTextField(this.controller,
      {Key? key,
      this.focusBorderColor,
      this.labelText,
      this.prefixIcon,
      this.valueCallBack,
      this.prefixIconColor,
      this.focusBorderRadius,
      this.labelStyle,
      this.focusBorderWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        alignment: Alignment.center,
        child: TextField(
          controller: controller,
          onChanged: (v) => valueCallBack != null ? valueCallBack!(v) : {},
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            prefixIcon: Icon(
              prefixIcon ?? Icons.email,
              color: prefixIconColor ?? Colors.white,
            ),
            labelText: labelText ?? "",
            labelStyle: labelStyle ??
                const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(focusBorderRadius ?? 9.0)),
                borderSide: BorderSide(width: focusBorderWidth ?? 2, color: focusBorderColor ?? AppColors.mediumGrey)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(focusBorderRadius ?? 9.0)),
              borderSide: BorderSide(width: focusBorderWidth ?? 2, color: focusBorderColor ?? AppColors.mediumGrey),
            ),
          ),
        ));
  }
}
