import 'package:flutter/material.dart';
import 'package:manager/components/title_component.dart';

class HeaderComponent extends StatelessWidget {
  final String title;
   const HeaderComponent({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: TitleComponent(title: title),
    );
  }
}
