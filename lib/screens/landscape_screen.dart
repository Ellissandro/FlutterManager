import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class LandscapeScreen extends StatelessWidget {
  const LandscapeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.theme,
        title: const Text('Galeria'),
      ),
       body: const Center(
        child: Text(
          'Galeria',
          style: TextStyle(
              fontSize: 30,
              color: AppColors.theme,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
