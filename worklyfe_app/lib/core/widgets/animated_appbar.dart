import 'package:Worklyfe/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AnimatedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AnimatedAppBar({super.key, required this.showAppBar});
  final bool showAppBar;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: showAppBar ? kToolbarHeight : 0,
      duration: const Duration(milliseconds: 500),
      child: AppBar(
        elevation: 0.7,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.mediumGrey,
          ),
          onPressed: () {},
        ),
        backgroundColor: AppColors.white,
        title: SvgPicture.asset(
          'assets/app_logo.svg',
          fit: BoxFit.cover,
          width: 120,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(icon: const Icon(Icons.tune, color: AppColors.mediumGrey), onPressed: () {}),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
