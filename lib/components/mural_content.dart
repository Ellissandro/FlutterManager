import 'package:flutter/material.dart';
import 'package:manager/components/user_photo.dart';
import 'package:manager/core/app_colors.dart';
import 'package:manager/core/app_images.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manager/core/app_svgs.dart';

import 'card_component.dart';

class MuralContent extends StatelessWidget {
  const MuralContent({super.key});

  onPressed() {}
  @override
  Widget build(BuildContext context) {
    return CardComponent(
      child: Column(
      children: [
        ListTile(
          horizontalTitleGap: 10,
          visualDensity: const VisualDensity(horizontal: 0, vertical: -4),
          contentPadding: const EdgeInsets.all(0),
          minVerticalPadding: 0,
          leading: Stack(
            clipBehavior: Clip.none,
            children: [
              UserPhoto(
                photo: AppImages.camila,
              ),
              Positioned(
                bottom: 27,
                left: 5,
                height: 30,
                width: 30,
                child: Image.asset(
                  AppImages.startElvelOne,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          title: const Text('claudia',
              style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: const Text('20/07/2022 08:40', style: TextStyle(fontSize: 12, color: AppColors.black),),
        ),
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(AppImages.slideOne),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: SvgPicture.asset(
                      AppSvgs.avatar,
                      height: 20,
                    ),
                  ),
                  const Text('123')
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SvgPicture.asset(
                      AppSvgs.heart,
                      height: 20,
                    ),
                  ),
                  SvgPicture.asset(
                    AppSvgs.favorite,
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
        RichText(
          text: const TextSpan(
            // Note: Styles for TextSpans must be explicitly defined.
            // Child text spans will inherit styles from parent
            style: TextStyle(
              fontSize: 14.0,
              color: AppColors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: 'claudia ',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                  text:
                      'Conheça mulheres que fizeram história na tecnologia #mulheres #tecnologia #historia'),
            ],
          ),
        ),
      ],
    ));
  }
}
