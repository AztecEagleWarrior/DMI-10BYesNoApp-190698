import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/entities/message.dart';

class MyMessageBubble extends StatelessWidget {
  final Message message;

  const MyMessageBubble({
    super.key, 
    required this.message
  });

  @override
  Widget build(BuildContext context) {
    final String time = TimeOfDay.now().format(context);
    //final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 29, 167, 24), borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              message.text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 2.5),
      Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Hora del mensaje
            Text(
              time,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(width: 5), // Espacio entre la hora y la palomita
            // Palomita de "visto"
            Icon(
              Icons.check_circle,
              size: 18,
              color: const Color.fromARGB(255, 5, 221,
                  12), // Cambiar a verde para mostrar que el mensaje ha sido leído
            ),
          ],
        ),
        const SizedBox(height: 2.5),
      ],
    );
  }
}
