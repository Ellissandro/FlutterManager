import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.theme,
        title: const Text('Perfil'),
      ),
       body: const Center(
        child: Text(
          'Perfil',
          style: TextStyle(
              fontSize: 30,
              color: AppColors.theme,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
