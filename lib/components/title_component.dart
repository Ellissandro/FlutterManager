
import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class TitleComponent extends StatelessWidget {
  final String title;
  const TitleComponent({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Title(
      color: AppColors.theme,
      child: Text(
        title,
        style: const TextStyle(
          color: AppColors.theme,
          fontSize: 20,
        ),
      ),
    );
  }
}
