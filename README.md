![utxj](https://github.com/loreasc2003/m4delProyecto/assets/163441777/57f5e0f6-567a-4597-beff-f8adc0768c60)

<br>
<br>
<h1 align="center"> Universidad Tecnológica de Xicotepec de Juárez </h1>
<br>

<h2 align="center"> Desarrollo Móvil Integral </h2>
<h2 align="center"> DMI-10BYesNoApp-190698 </h2>
<h2 align="center"> Por: Adán Salas Galván </h2>
<br>
<h2> Objetivo </h2>
Aplicaciones realizada en Flutter para Dispositivos Móviles, parte de la Unidad 2 de la asignatura de Desarrollo Móvil Integral para comprender el uso de Stateless Y Statefull Widgets.
<br>
<h2 align="center"> Documentación del proyecto </h2>

### HISTORIAL DE PRÁCTICAS:
|No.|Nombre|Potenciador|Estatus|
|--|--|--|--|
|21|Integracion de Widgets|6|Finalizada|
|22|Implementacion de la UI|7|Finalizada|
|23|Implementacion de respuesta del chat|10|Finalizada|


## Estructura de las carpetas

<br>

  
  

<img  width="725"  alt="CapturaProject"  src="https://cdn.discordapp.com/attachments/981402327074373672/1309922372043669646/image.png?ex=674357c6&is=67420646&hm=9b4e7a5207cbccc020f2a6622bdc8a37cd58ee71884dec073a5c00bf77c2561b&">

  
<br>

<h3> Practica 21 </h3>

  

| Captura | Descripción |
|:-------------:|:---------------|
| <img src="https://cdn.discordapp.com/attachments/981402327074373672/1309924742542659634/image.png?ex=674359fb&is=6742087b
hm=8f2b8ff7012d41188cd1891d3e1ea3a1aa99331025718e7c795c798dfef491e4&" width="300" height="100" style="margin-bottom: 5px;"> |
El archivo `main.dart` sirve como punto de entrada para la aplicación **Yes No App**. En este archivo se configura la estructura básica de la aplicación utilizando el framework Flutter, incluyendo la gestión del estado mediante el uso del patrón **Provider**.

-   **MultiProvider**: Se emplea para la gestión del estado global de la aplicación. En este caso, se inicializa un `ChangeNotifierProvider` que administra el estado relacionado con el chat a través del `ChatProvider`.
-   **Tema personalizado**: La aplicación utiliza un tema visual personalizado, definido mediante la clase `AppTheme`. Este tema permite una configuración flexible de los colores y estilos utilizados en la interfaz de usuario.
-   **Pantalla principal**: La pantalla principal de la aplicación es `ChatScreen`, que constituye el centro de interacción para los usuarios dentro de la aplicación.

Este archivo es esencial para iniciar la aplicación, establecer el tema visual y gestionar el estado global de la misma a través de sus proveedores. |

| <img src="https://cdn.discordapp.com/attachments/981402327074373672/1309926902034595900/image.png?ex=67435bfe&is=67420a7e&hm=1ffbd874aa69cc88ed4190543965c9c6cd438b6b29e9d4a9b6b535d3d7d04486&" width="300" height="100" style="margin-bottom: 5px;"> |El archivo `app_theme.dart` define el tema visual de la aplicación **Yes No App**, permitiendo personalizar la apariencia de la interfaz de usuario mediante el uso de diferentes esquemas de color.

-   **Colores personalizados**: Se define un conjunto de colores a través de la lista `_ColorThemes`, que incluye una gama de colores predeterminados como un color personalizado (`_customColor`), además de colores estándar como azul, verde, amarillo, y otros.
    
-   **Clase `AppTheme`**: Esta clase recibe un índice `selectedColor` que permite elegir el color base para la aplicación de entre los colores predefinidos en la lista `_ColorThemes`. El parámetro `selectedColor` es validado para asegurarse de que el valor esté dentro del rango permitido de colores disponibles.
    
-   **Método `theme()`**: Este método retorna un `ThemeData` configurado con:
    
    -   **useMaterial3**: Activa el soporte para Material You (Material 3), la última versión de los componentes de diseño de Google.
    -   **colorSchemeSeed**: Utiliza el color seleccionado para generar un esquema de color consistente en toda la aplicación.
    -   **brightness**: Se establece como `Brightness.dark` para que la aplicación utilice un modo oscuro predeterminado.

Este archivo centraliza la gestión de la apariencia visual, proporcionando flexibilidad para cambiar fácilmente el esquema de colores de la aplicación.|
| <img src="https://github.com/user-attachments/assets/492473ea-96c0-416a-99ee-78a393aadd1e" width="300" height="100" style="margin-bottom: 5px;"> |El archivo `chat_screen.dart` contiene la implementación de la interfaz de usuario para la pantalla de chat de la aplicación **Yes No App**. En esta pantalla se gestionan los mensajes y su visualización en la conversación.

-   **Pantalla principal (`ChatScreen`)**:
    
    -   Se utiliza un `Scaffold` para estructurar la pantalla, incluyendo una barra de aplicación (`AppBar`) en la parte superior con un avatar y el título "Courier Six".
    -   El avatar de usuario se obtiene a partir de una imagen de URL y se posiciona en el lado izquierdo de la barra de la aplicación.
    -   El título muestra el nombre de la conversación o el chat, y el `centerTitle` está configurado como `false` para alinear el título a la izquierda.
-   **Vista del chat (`_ChatView`)**:
    
    -   La clase `_ChatView` es responsable de la visualización de los mensajes en la pantalla de chat. Se utiliza un `ListView.builder` para renderizar la lista de mensajes.
    -   Se configura un controlador de desplazamiento (`chatScrollController`) para permitir el desplazamiento automático y fluido de los mensajes.
    -   Cada mensaje es procesado por un `itemBuilder` que decide si el mensaje es enviado por el usuario o por la otra persona, lo que determina si se muestra el widget `HerMessageBubble` o `MyMessageBubble`.
    -   La lista de mensajes es obtenida del proveedor de estado `ChatProvider` mediante `chatProvider.messageList`.
-   **Caja de texto de mensaje (`MessageFieldBox`)**:
    
    -   Al final de la pantalla, se muestra un cuadro de entrada de texto donde los usuarios pueden escribir nuevos mensajes. La acción de envío del mensaje está vinculada a la función `sendMessage` proporcionada por el `ChatProvider`.

Este archivo gestiona la visualización de la conversación, la presentación de los mensajes en burbujas diferenciadas según el remitente, y proporciona un campo de entrada para enviar mensajes en tiempo real. La lógica de la gestión de mensajes está centralizada a través de la clase `ChatProvider`, que proporciona el estado necesario para actualizar la interfaz de usuario.|

<h3> Practica 22 </h3>
  
| Captura | Descripción |
|:-------------:|:---------------|
| <img src="https://cdn.discordapp.com/attachments/981402327074373672/1309932301534363739/image.png?ex=67436106&is=67420f86&hm=cc96a308544845ea9c373ddd53895e04b7353183d905a3d7fcf2a8e1791f623b&" width="300" height="100" style="margin-bottom: 5px;"> |Este archivo define la pantalla principal de la aplicación de chat, utilizando un `StatelessWidget`. La interfaz incluye una barra de navegación con el nombre del chat y una imagen de avatar. En el cuerpo de la pantalla, se encuentra un widget `ListView.builder` que muestra los mensajes en burbujas, diferenciando entre los mensajes del usuario y los de la otra persona. Al final de la pantalla, se encuentra un campo de entrada de texto para enviar nuevos mensajes. La pantalla se adapta de manera segura a los márgenes del dispositivo con el widget `SafeArea`.|
| <img src="https://media.discordapp.net/attachments/981402327074373672/1309934410266574878/image.png?ex=674362fc&is=6742117c&hm=6b591dae8c8f2ec933a99f4dbb86aa952aead309464c13e070db3426fd63a35b&=&format=webp&quality=lossless&width=1399&height=676" width="300" height="100" style="margin-bottom: 5px;"> |El widget `MyMessageBubble` representa un mensaje enviado por el usuario en el chat. Utiliza un `Container` con un fondo verde y bordes redondeados para mostrar el texto del mensaje. El estilo del texto es blanco, proporcionando un contraste claro con el fondo. Este widget está diseñado para alinearse a la derecha de la pantalla, indicando que el mensaje proviene del usuario actual.|
| <img src="https://media.discordapp.net/attachments/981402327074373672/1309935009976684606/image.png?ex=6743638b&is=6742120b&hm=85ebebf647b530c7c4d2872186cc6bdd81bad8b1b1420e6eb251598c16482781&=&format=webp&quality=lossless&width=1341&height=676" width="300" height="100" style="margin-bottom: 5px;"> |El widget `HerMessageBubble` representa un mensaje recibido en el chat, mostrando el texto del mensaje con un fondo color índigo y bordes redondeados. El texto es de color blanco, asegurando un buen contraste. Además, si el mensaje contiene una URL de imagen, esta se presenta a continuación del mensaje en forma de imagen dentro del widget `_ImageBubble`. El widget está alineado a la izquierda de la pantalla, indicando que el mensaje proviene de la otra persona en la conversación.|
| <img src="https://media.discordapp.net/attachments/981402327074373672/1309938506113613854/image.png?ex=674366cd&is=6742154d&hm=e790eddc8aa776503fd24291d0531e61fd3c9cd2aaeff7518d90d7c6ac88795f&=&format=webp&quality=lossless" width="300" height="100" style="margin-bottom: 5px;"> |La clase `_ImageBubble` es un widget que se utiliza para mostrar imágenes dentro de un chat. Este widget recibe una URL de imagen como parámetro y la muestra con un estilo específico. La imagen se presenta dentro de un contenedor con bordes redondeados, y se adapta al tamaño de la pantalla con un ancho del 70% del dispositivo y una altura fija de 150. Durante la carga de la imagen, se muestra un texto indicando que la imagen está en proceso de ser enviada. Además, se utiliza un `ClipRRect` para aplicar los bordes redondeados a la imagen.|
|<img src="https://media.discordapp.net/attachments/981402327074373672/1309939626362015876/image.png?ex=674367d8&is=67421658&hm=9cce5c9e3453dec4077baa9716077bc762d5c2519edc9c102e9ae27367f2a721&=&format=webp&quality=lossless&width=1337&height=676" width="300" height="100" style="margin-bottom: 5px;"> |Este archivo define el widget `MessageFieldBox`, que representa un campo de entrada de texto para enviar mensajes en un chat. Este widget toma como parámetro una función `onValue`, que se ejecuta cuando el usuario envía un mensaje.

**Comportamiento:**

-   **Controlador de texto (`TextEditingController`)**: Se utiliza para controlar el texto ingresado en el campo de texto.
-   **FocusNode**: Controla el enfoque en el campo de texto, asegurando que se pueda gestionar el comportamiento de la entrada de texto cuando el usuario toque fuera del campo.
-   **Estilo del campo de texto**: Se utiliza un borde redondeado y un fondo con borde transparente. La propiedad `suffixIcon` agrega un botón de envío con el ícono `send_outlined`.
-   **Envío de mensaje**: Al presionar el ícono de envío, el texto se pasa a la función `onValue`, y el campo de texto se limpia.
-   **Enfoque al enviar**: Al enviar un mensaje (tanto por presionar el botón como al hacer "submit"), el campo de texto se limpia y el enfoque se restablece.

**Resumen:** El widget proporciona una forma estilizada y funcional para que el usuario escriba y envíe mensajes dentro de una interfaz de chat.|
