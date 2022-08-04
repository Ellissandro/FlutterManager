import 'package:flutter/material.dart';
import 'package:manager/screens/calendar_screen.dart';
import 'package:manager/screens/chat_screen.dart';
import 'package:manager/screens/home_screens.dart';
import 'package:manager/screens/landscape_screen.dart';
import 'package:manager/screens/profile_screen.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      routes: {
        AppRoutes.HOME: (_) =>  const HomeScreen(),
        AppRoutes.CALENDAR: (_) =>  const CalendarScreen(),
        AppRoutes.CHAT: (_) =>  const ChatScreen(),
        AppRoutes.LANDSCAPE: (_) =>  const LandscapeScreen(),
        AppRoutes.PROFILE: (_) =>  const ProfileScreen(),
      },
    );
  }
}
