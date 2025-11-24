
import 'package:doctor/core/helpers/extenstions.dart';
import 'package:doctor/core/routing/routes.dart';
import 'package:doctor/core/theming/app_colors.dart';
import 'package:doctor/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetButton extends StatelessWidget {
  const GetButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, 52),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Text(
        'Get Started',
        style: TextStyles.font16WhiteMedium,
      ),
    );
  }
}