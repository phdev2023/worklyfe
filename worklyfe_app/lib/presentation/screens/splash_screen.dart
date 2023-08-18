import 'package:Worklyfe/core/routes/app_route_constants.dart';
import 'package:Worklyfe/core/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _showDashBoard());
  }

  Future _showDashBoard() async {
    await Future.delayed(const Duration(milliseconds: 500), () {
      GoRouter.of(context).pushNamed(MyAppRouteConstants.loginRouterName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CommonText(text: 'Splash Screen'),
    );
  }
}
