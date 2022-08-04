import 'package:flutter/material.dart';
import 'package:manager/routes/app_routes.dart';

import '../core/app_logos.dart';

class FloatingActionButtonComponent extends StatelessWidget {
  const FloatingActionButtonComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        onPressed: () => { Navigator.pushNamed(context, AppRoutes.HOME) },
        elevation: 0,
        child: CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage(AppLogos.wakkeManager),
        ),
      ),
    );
  }
}
