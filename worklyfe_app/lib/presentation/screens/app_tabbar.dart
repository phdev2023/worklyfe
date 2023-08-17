import 'package:Worklyfe/core/theme/app_colors.dart';
import 'package:Worklyfe/presentation/screens/connect_screen.dart';
import 'package:Worklyfe/presentation/screens/profile_screen.dart';
import 'package:Worklyfe/presentation/screens/worklyfe_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../core/widgets/animated_appbar.dart';

class AppTabbar extends StatefulWidget {
  const AppTabbar({Key? key}) : super(key: key);

  @override
  State<AppTabbar> createState() => _AppTabbarState();
}

class _AppTabbarState extends State<AppTabbar> {
  ScrollController? _scrollController;
  List<Widget>? _tabs;
  bool? _isVisible;
  Widget? _currentWidget;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _setupInitialData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AnimatedAppBar(showAppBar: _isVisible!),
        body: Center(
          child: _currentWidget,
        ),
        bottomNavigationBar: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: _isVisible! ? 56.0 : 0.0,
            child: Wrap(children: [
              BottomNavigationBar(
                elevation: 1,
                selectedItemColor: AppColors.black,
                unselectedItemColor: AppColors.mediumGrey,
                type: BottomNavigationBarType.fixed,
                selectedFontSize: 12.0,
                unselectedFontSize: 10.0,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.group_add, size: 20, color: _getSelectedColor(0)),
                    label: 'Connect',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.card_giftcard, size: 20, color: _getSelectedColor(1)),
                    label: 'Worklyfe',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle, size: 20, color: _getSelectedColor(2)),
                    label: 'Profile',
                  ),
                ],
                currentIndex: currentIndex,
                onTap: (index) {
                  setState(() {
                    _currentWidget = _getTab(index);
                    currentIndex = index;
                  });
                },
              )
            ])));
  }

  _setupInitialData() {
    _isVisible = true;
    _scrollController = ScrollController();
    _scrollController?.addListener(() {
      if (_scrollController!.position.userScrollDirection == ScrollDirection.forward) {
        if (_isVisible!) {
          setState(() {
            _isVisible = false;
          });
        }
      }
      if (_scrollController!.position.userScrollDirection == ScrollDirection.reverse) {
        if (!_isVisible!) {
          setState(() {
            _isVisible = true;
          });
        }
      }
    });

    _tabs = [
      ConnectScreen(
        controller: _scrollController!,
      ),
      const WorklyfeScreen(),
      const ProfileScreen()
    ];
  }

  _getTab(index) => _tabs![index];
  @override
  void dispose() {
    _scrollController?.dispose();
    super.dispose();
  }

  _getSelectedColor(i) => currentIndex == i ? AppColors.black : AppColors.mediumGrey;
}
