import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/config/theme/app_theme.dart';

import 'package:flutter_application_1/presentation/providers/chat_provider.dart';
import 'package:flutter_application_1/presentation/screens/chat/chat_screen.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider() )
      ],
      child: MaterialApp(
        title: 'Yes No App (190698)',
        debugShowCheckedModeBanner: false,
        theme: AppTheme( selectedColor: 0 ).theme(),
        home: const ChatScreen()
      ),
    );
  }
}
