import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://i.pinimg.com/564x/50/b8/0f/50b80f1ad77b977cd271cdfe78d7e0f3.jpg'),
          ),
        ),
        title: Text('Mi Amor ❤️'),
        centerTitle: false,
      ),
    );
  }
}
