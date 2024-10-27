import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/theme/app_theme.dart';
import 'package:flutter_application_1/presentation/chat/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Yes - No App (190698)',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().theme(),
        home: const ChatScreen());
  }
}
