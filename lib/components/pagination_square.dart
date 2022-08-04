import 'package:flutter/material.dart';
import '../core/app_colors.dart';
class PaginationSquare extends StatelessWidget {
  const PaginationSquare({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7,
      width: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.themeLight,
      ),
    );
  }
}
