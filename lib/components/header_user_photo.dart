import 'package:flutter/material.dart';

import '../core/app_images.dart';

class HeaderUserPhotoComponent extends StatelessWidget {
  final String photo;
  const HeaderUserPhotoComponent({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 40,
          width: 40,
          margin: const EdgeInsets.all(13),
          padding: const EdgeInsets.all(1.5),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                    width: 1.5,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(1.5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(photo, fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 18,
          bottom: 42,
          height: 30,
          width: 30,
          child: Image.asset(
            AppImages.startElvelOne,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
