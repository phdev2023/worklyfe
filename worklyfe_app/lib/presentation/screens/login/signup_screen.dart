import 'package:Worklyfe/core/theme/app_colors.dart';
import 'package:Worklyfe/core/theme/app_padding.dart';
import 'package:Worklyfe/core/utils/app_screen.dart';
import 'package:Worklyfe/core/widgets/app_textfield.dart';
import 'package:Worklyfe/core/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = AppScreen.size(context);
    const labelStyle = TextStyle(color: AppColors.lightGrey, fontWeight: FontWeight.w400, fontSize: 12);
    return Scaffold(
        body: Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: size.height * 0.45,
              width: size.width,
              color: AppColors.secondary,
            ),
            Positioned(
              bottom: 0,
              child: SvgPicture.asset('assets/login/app_create.svg', fit: BoxFit.cover, width: size.width * 0.6),
            ),
            const Positioned(
              top: 50,
              child: CommonText(
                text: "Create Account",
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.all(CommonPadding.medium_20),
          child: Column(
            children: [
              AppTextField(
                TextEditingController(),
                labelText: "First name",
                prefixIcon: Icons.business_center,
                prefixIconColor: AppColors.lightGrey,
                focusBorderColor: AppColors.secondary,
                labelStyle: labelStyle,
                focusBorderWidth: 1,
              ),
              const SizedBox(
                height: 15,
              ),
              AppTextField(
                TextEditingController(),
                labelText: "Last name",
                prefixIcon: Icons.business_center,
                prefixIconColor: AppColors.lightGrey,
                focusBorderColor: AppColors.secondary,
                labelStyle: labelStyle,
                focusBorderWidth: 1,
              ),
              const SizedBox(
                height: 15,
              ),
              AppTextField(
                TextEditingController(),
                labelText: "Password",
                prefixIcon: Icons.more_horiz,
                prefixIconColor: AppColors.lightGrey,
                focusBorderColor: AppColors.secondary,
                labelStyle: labelStyle,
                focusBorderWidth: 1,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    // Add your button action here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.orangeColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Spacer(),
                      CommonText(
                        text: 'Create Account',
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
