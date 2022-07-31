import 'package:flutter/material.dart';

class UserPhoto extends StatelessWidget {
  final String photo; 
  const UserPhoto({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
