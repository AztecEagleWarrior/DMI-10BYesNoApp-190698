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
| <img src="https://media.discordapp.net/attachments/981402327074373672/1309924449318998157/image.png?ex=674359b5&is=67420835&hm=e79715a5841692ac862a4fc798ed879ab9ebcdfe5a9fbfbb9189504eb93b3f25&=&format=webp&quality=lossless&width=1245&height=676" width="300" height="100" style="margin-bottom: 5px;">|El archivo main.dart inicia la aplicación Yes No App, configurando el estado global con MultiProvider y gestionando el chat a través de ChatProvider, mientras define un tema visual personalizado con AppTheme y establece ChatScreen como la pantalla principal para la interacción del usuario.|
| <img src="https://cdn.discordapp.com/attachments/981402327074373672/1309926902034595900/image.png?ex=67435bfe&is=67420a7e&hm=1ffbd874aa69cc88ed4190543965c9c6cd438b6b29e9d4a9b6b535d3d7d04486&" width="300" height="100" style="margin-bottom: 5px;"> |El archivo app_theme.dart define el tema visual de Yes No App permitiendo personalizar los colores de la interfaz mediante la clase AppTheme, que selecciona un color base de la lista _ColorThemes y aplica un esquema de color usando Material You (Material 3), con un modo oscuro predeterminado.|
|<img src="https://github.com/user-attachments/assets/492473ea-96c0-416a-99ee-78a393aadd1e" width="300" height="100" style="margin-bottom: 5px;">|El archivo chat_screen.dart implementa la interfaz de usuario de la pantalla de chat de Yes No App, utilizando un Scaffold con una barra de aplicación que incluye un avatar y el título del chat. Los mensajes se muestran en un ListView.builder, donde se diferencia entre los mensajes del usuario y los de la otra persona mediante los widgets MyMessageBubble y HerMessageBubble. Al final, se encuentra un campo de texto para enviar mensajes, gestionado por la función sendMessage del ChatProvider, que centraliza el estado y la lógica de la conversación.|


<h3> Practica 22 </h3>
  
| Captura | Descripción |
|:-------------:|:---------------|
| <img src="https://cdn.discordapp.com/attachments/981402327074373672/1309932301534363739/image.png?ex=67436106&is=67420f86&hm=cc96a308544845ea9c373ddd53895e04b7353183d905a3d7fcf2a8e1791f623b&" width="300" height="100" style="margin-bottom: 5px;"> |Este archivo define la pantalla principal de la aplicación de chat, utilizando un `StatelessWidget`. La interfaz incluye una barra de navegación con el nombre del chat y una imagen de avatar. En el cuerpo de la pantalla, se encuentra un widget `ListView.builder` que muestra los mensajes en burbujas, diferenciando entre los mensajes del usuario y los de la otra persona. Al final de la pantalla, se encuentra un campo de entrada de texto para enviar nuevos mensajes. La pantalla se adapta de manera segura a los márgenes del dispositivo con el widget `SafeArea`.|
| <img src="https://media.discordapp.net/attachments/981402327074373672/1309934410266574878/image.png?ex=674362fc&is=6742117c&hm=6b591dae8c8f2ec933a99f4dbb86aa952aead309464c13e070db3426fd63a35b&=&format=webp&quality=lossless&width=1399&height=676" width="300" height="100" style="margin-bottom: 5px;"> |El widget `MyMessageBubble` representa un mensaje enviado por el usuario en el chat. Utiliza un `Container` con un fondo verde y bordes redondeados para mostrar el texto del mensaje. El estilo del texto es blanco, proporcionando un contraste claro con el fondo. Este widget está diseñado para alinearse a la derecha de la pantalla, indicando que el mensaje proviene del usuario actual.|
| <img src="https://media.discordapp.net/attachments/981402327074373672/1309935009976684606/image.png?ex=6743638b&is=6742120b&hm=85ebebf647b530c7c4d2872186cc6bdd81bad8b1b1420e6eb251598c16482781&=&format=webp&quality=lossless&width=1341&height=676" width="300" height="100" style="margin-bottom: 5px;"> |El widget `HerMessageBubble` representa un mensaje recibido en el chat, mostrando el texto del mensaje con un fondo color índigo y bordes redondeados. El texto es de color blanco, asegurando un buen contraste. Además, si el mensaje contiene una URL de imagen, esta se presenta a continuación del mensaje en forma de imagen dentro del widget `_ImageBubble`. El widget está alineado a la izquierda de la pantalla, indicando que el mensaje proviene de la otra persona en la conversación.|
| <img src="https://media.discordapp.net/attachments/981402327074373672/1309938506113613854/image.png?ex=674366cd&is=6742154d&hm=e790eddc8aa776503fd24291d0531e61fd3c9cd2aaeff7518d90d7c6ac88795f&=&format=webp&quality=lossless" width="300" height="100" style="margin-bottom: 5px;"> |La clase `_ImageBubble` es un widget que se utiliza para mostrar imágenes dentro de un chat. Este widget recibe una URL de imagen como parámetro y la muestra con un estilo específico. La imagen se presenta dentro de un contenedor con bordes redondeados, y se adapta al tamaño de la pantalla con un ancho del 70% del dispositivo y una altura fija de 150. Durante la carga de la imagen, se muestra un texto indicando que la imagen está en proceso de ser enviada. Además, se utiliza un `ClipRRect` para aplicar los bordes redondeados a la imagen.|
|<img src="https://media.discordapp.net/attachments/981402327074373672/1309939626362015876/image.png?ex=674367d8&is=67421658&hm=9cce5c9e3453dec4077baa9716077bc762d5c2519edc9c102e9ae27367f2a721&=&format=webp&quality=lossless&width=1337&height=676" width="300" height="100" style="margin-bottom: 5px;">|El archivo define el widget MessageFieldBox, que es un campo de entrada de texto para enviar mensajes en un chat. Utiliza un TextEditingController para manejar el texto y un FocusNode para controlar el enfoque. El estilo incluye un borde redondeado y un botón de envío con el ícono send_outlined. Al enviar un mensaje, el texto se pasa a la función onValue, el campo de texto se limpia y el enfoque se restablece, proporcionando una interfaz funcional y estilizada para el chat.|essage del ChatProvider, que centraliza el estado y la lógica de la conversación.|


<h3> Practica 23 </h3>

  

| Captura | Descripción |
|:-------------:|:---------------|
| <img src="https://media.discordapp.net/attachments/981402327074373672/1309956277098516581/image.png?ex=6743775a&is=674225da&hm=e10dfdfb57fdcc4888acca9faa42d487db786e51686cdd85d1ea9fe34e958fca&=&format=webp&quality=lossless&width=1440&height=660" width="300" height="100" style="margin-bottom: 5px;"> |El archivo define la clase `YesNoModel`, que maneja respuestas en la aplicación mediante tres propiedades: `answer` (respuesta), `forced` (si fue forzada) e `image` (URL de una imagen). Incluye métodos para crear instancias desde un mapa JSON (`fromJsonMap`), convertirlas a JSON (`toJson`) y transformar el modelo en una entidad `Message` (`toMessageEntity`), adaptando la respuesta a "Si" o "No", asignando un remitente (`FromWho.hers`) y una imagen, facilitando la integración de datos externos con la lógica de la aplicación.|
| <img src="https://cdn.discordapp.com/attachments/981402327074373672/1309956890020806666/image.png?ex=674377ec&is=6742266c&hm=a1f132db279127dfd662d5922bbb12a69291dc65976fb47a02b44c90125ea661&" width="300" height="100" style="margin-bottom: 5px;"> |El archivo define la clase `ChatProvider`, que gestiona el estado y la lógica del chat en la aplicación. Contiene un controlador de desplazamiento (`chatScrollController`), una lista de mensajes (`messageList`) y una instancia de `GetYesNoAnswer` para obtener respuestas automatizadas. La función `sendMessage` agrega un mensaje enviado por el usuario y, si termina con un signo de interrogación, llama a `herReply` para agregar una respuesta generada automáticamente. Ambas funciones actualizan la lista de mensajes y desplazan el chat al final con `moveScrollToBottom`, garantizando una experiencia fluida y reactiva en la conversación.|
| <img src="https://github.com/user-attachments/assets/f28107b7-4157-4a42-abe2-20556e076222" width="300" height="100" style="margin-bottom: 5px;"> |La clase `GetYesNoAnswer` actúa como un puente entre la API de yesno.wtf y la lógica de la aplicación. Realiza solicitudes HTTP, transforma las respuestas en objetos internos, y permite integrar respuestas automáticas en el flujo del chat, completando la experiencia interactiva de la aplicación.| 
|<img src="https://media.discordapp.net/attachments/981402327074373672/1309957451042258994/image.png?ex=67437872&is=674226f2&hm=c5aaef66f5536aadad7a2b7e911535577a834ecad1db17f6a6671965bce08b87&=&format=webp&quality=lossless" width="300" height="100" style="margin-bottom: 5px;"> |El archivo define la clase `GetYesNoAnswer`, responsable de obtener respuestas automatizadas para el chat mediante una solicitud HTTP a la API `https://yesno.wtf/api` utilizando la biblioteca `Dio`. La respuesta de la API se convierte en un objeto `YesNoModel` y posteriormente en una entidad `Message` mediante el método `toMessageEntity`, que devuelve el mensaje listo para ser usado en el chat.|


## Resultados
<br>

![ResultCapture](https://media.discordapp.net/attachments/981402327074373672/1309960949326938112/image.png?ex=67437bb4&is=67422a34&hm=5dcbfc1620d941598358eeca4740e552f713b98d806551d4e6a16ad25c0dad80&=&format=webp&quality=lossless&width=320&height=676)