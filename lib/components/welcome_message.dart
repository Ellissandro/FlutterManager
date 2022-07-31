import 'package:flutter/cupertino.dart';
import 'package:manager/core/app_colors.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});
  final String message = 'Olá, ';
  final String name = 'Laura';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          message,
          style: const TextStyle(
            fontSize: 40,
            color: AppColors.strongGray,
          ),
        ),
        Text(
          name,
          style: const TextStyle(
              fontSize: 40,
              color: AppColors.strongGray,
              fontWeight: FontWeight.w900),
        ),
      ],
    );
  }
}
