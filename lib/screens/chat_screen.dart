import 'package:flutter/material.dart';
import 'package:manager/core/app_colors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.theme,
        title: const Text('Chat'),
      ),
      body: const Center(
        child: Text(
          'Chat',
          style: TextStyle(
              fontSize: 30,
              color: AppColors.theme,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
