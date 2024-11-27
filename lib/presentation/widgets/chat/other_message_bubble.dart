import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/entities/message.dart';

// Widget para mostrar el mensaje recibido de otra persona
class HerMessageBubble extends StatelessWidget {
  final Message message;

  // Constructor que recibe el mensaje como parámetro
  const HerMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    // Obtener la hora actual del mensaje
    final String time = TimeOfDay.now().format(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Alinear el mensaje a la izquierda
      children: [
        const SizedBox(height: 5), // Espacio superior entre los elementos

        // Contenedor que muestra el mensaje
        Container(
          decoration: BoxDecoration(
              color: Colors.indigo, // Fondo del mensaje en color indigo
              borderRadius: BorderRadius.circular(20) // Bordes redondeados
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Padding dentro del contenedor
            child: Text(
              message.text, // El texto del mensaje
              style: const TextStyle(color: Colors.white), // Texto en color blanco
            ),
          ),
        ),
        const SizedBox(height: 2.5), // Espacio después del mensaje

        // Fila con la hora y la palomita de "visto"
        Row(
          mainAxisAlignment: MainAxisAlignment.start, // Alinear todo a la izquierda
          children: [
            // Mostrar la hora en que se envió el mensaje
            Text(
              time,
              style: const TextStyle(fontSize: 12, color: Colors.grey), // Estilo del texto para la hora
            ),
            const SizedBox(width: 5), // Espacio entre la hora y la palomita

            // Icono de palomita indicando que el mensaje ha sido visto
            Icon(
              Icons.check_circle,
              size: 18, // Tamaño del icono
              color: const Color.fromARGB(255, 5, 221, 12), // Color verde para indicar que fue leído
            ),
          ],
        ),
        
        // Mostrar la imagen si el mensaje tiene una URL de imagen
        _ImageBubble( message.imageUrl! ),  

        const SizedBox(height: 2.5), // Espacio después de la imagen
      ],
    );
  }
}

// Widget para mostrar la imagen en el mensaje (si existe una URL de imagen)
class _ImageBubble extends StatelessWidget {
  final String imageUrl;

  // Constructor que recibe la URL de la imagen como parámetro
  const _ImageBubble( this.imageUrl );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // Obtener el tamaño de la pantalla

    return ClipRRect(
        borderRadius: BorderRadius.circular(20), // Bordes redondeados para la imagen
        child: Image.network(
          imageUrl, // URL de la imagen
          width: size.width * 0.7, // El ancho de la imagen será el 70% del ancho de la pantalla
          height: 150, // Altura fija de 150
          fit: BoxFit.cover, // Ajustar la imagen al contenedor sin distorsionarla
          loadingBuilder: (context, child, loadingProgress) {
            // Mientras la imagen se está cargando, mostrar un texto indicativo
            if (loadingProgress == null) return child; // Si no hay progreso, mostrar la imagen

            return Container(
              width: size.width * 0.7, // El mismo ancho que la imagen
              height: 150, // Altura fija
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5), // Padding dentro del contenedor
              child: const Text('Courier Six está Enviando una imagen'), // Mensaje mientras se carga la imagen
            );
          },
        ));
  }
}
