import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:manager/routes/app_routes.dart';

import '../core/app_colors.dart';
import '../core/app_svgs.dart';

class BottomNavigationBarComponent extends StatelessWidget {
  const BottomNavigationBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 4,
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: kBottomNavigationBarHeight,
        child: BottomNavigationBar(
            currentIndex: 2,
            onTap: (value) => {
                  Navigator.pushNamed(
                    context,
                    appRoutesLabel[value]!,
                  ),
                },
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppSvgs.calendar,
                  height: 20,
                  color: AppColors.strongGray,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppSvgs.chat,
                  height: 20,
                  color: AppColors.strongGray,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppSvgs.chat,
                  height: 20,
                  color: AppColors.grey,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppSvgs.landscape,
                  height: 20,
                  color: AppColors.strongGray,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  AppSvgs.avatar,
                  height: 20,
                  color: AppColors.strongGray,
                ),
                label: '',
              ),
            ]),
      ),
    );
  }
}
