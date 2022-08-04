import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/app_colors.dart';

class FastAcessComponent extends StatelessWidget {
  final String icon;
  final String title;
  const FastAcessComponent({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(15),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              icon,
              height: 40,
              color: AppColors.theme,
            ),
              Text(title,
                style: const TextStyle(fontSize: 12, color: AppColors.theme)),
          ],
        ),
      ),
    );
  }
}
