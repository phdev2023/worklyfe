import 'package:Worklyfe/core/routes/app_route_constants.dart';
import 'package:Worklyfe/core/theme/app_colors.dart';
import 'package:Worklyfe/core/theme/app_padding.dart';
import 'package:Worklyfe/core/utils/app_screen.dart';
import 'package:Worklyfe/core/widgets/app_textfield.dart';
import 'package:Worklyfe/core/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = AppScreen.size(context);
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: SizedBox(
            width: size.width,
            height: size.height * 0.9,
            child: CustomPaint(painter: LoginCurvePainter()),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            SvgPicture.asset(
              'assets/app_logo.svg',
              fit: BoxFit.cover,
              width: 150,
            ),
            const SizedBox(
              height: 30,
            ),
            const CommonText(
              text: "do your best work",
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
            const SizedBox(
              height: 5,
            ),
            const CommonText(
              text: "live your best life",
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
            SvgPicture.asset('assets/login/app_underline.svg', fit: BoxFit.cover),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(CommonPadding.large),
              alignment: Alignment.bottomCenter,
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: AppTextField(
                      TextEditingController(),
                      labelText: "continue with email",
                      prefixIcon: Icons.email,
                      focusBorderColor: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    width: 40,
                    child: IconButton(
                        onPressed: () {
                          GoRouter.of(context).pushNamed(MyAppRouteConstants.signupRouterName);
                        },
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: AppColors.orangeColor,
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    ));
  }
}

class LoginCurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    const gradient = LinearGradient(
      colors: [
        AppColors.orangeColor,
        AppColors.pinkColor,
        AppColors.orangeColor,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
    Paint paint = Paint()..shader = gradient.createShader(rect);
    paint.color = AppColors.pinkColor;
    paint.style = PaintingStyle.fill;
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.75);
    path.quadraticBezierTo(size.width / 2, size.height / 2, 0, size.height * 0.75);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
