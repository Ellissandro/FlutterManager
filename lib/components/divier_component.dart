import 'package:flutter/material.dart';

class DividerComponent extends StatelessWidget {
  final double height;
  const DividerComponent({super.key, this.height = 20});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(height: height);
  }
}