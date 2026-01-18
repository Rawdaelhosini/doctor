import 'package:doctor/core/theming/app_colors.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? suffixIcon;
  final bool? obscureText;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final Color? fillColor;
  const AppTextFormField({super.key, required this.hintText, this.contentPadding, this.suffixIcon, this.obscureText, this.focusedBorder, this.enabledBorder, this.hintStyle, this.inputTextStyle, this.fillColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  InputDecoration(
        isDense: true,
        contentPadding: contentPadding?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
     focusedBorder: focusedBorder?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.3.w),
        ),
        enabledBorder: enabledBorder?? OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: BorderSide(color: ColorsManager.lighterGray, width: 1.3.w),
        ),
        hintStyle: hintStyle?? TextStyles.font14lightGrayRegular,
       hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: fillColor?? ColorsManager.moreLightGray
        ,
        filled: true,
      ),
      obscureText: obscureText?? false,
      style: inputTextStyle?? TextStyles.font14darkBlueMedium,
    );
  }
}
       