## Rick and Morty App Flutter

<p align="center"> 
<img src="https://i.postimg.cc/RCytd3sY/logo-rick-morty.png" alt="FLEX Logo" width="300"/> </p>

<p align="center">By Claudio Moreno</p>

Esta aplicación móvil, desarrollada con Flutter para el curso de Aplicaciones para dispositivos móviles CC238-2401-WV61, consume la API pública de Rick and Morty para mostrar una lista de personajes de la popular serie animada. Los usuarios pueden ver los detalles de cada personaje, marcarlos como favoritos y acceder a una lista de sus personajes favoritos. Este ejercicio práctico está diseñado para familiarizarse con Flutter y aprender a manejar APIs, gestión de estado, y navegación en una aplicación móvil.

### Objetivos del Ejercicio

-   **Aprender a usar Flutter**: Conocer las bases del desarrollo de aplicaciones móviles con Flutter.
-   **Consumo de API REST**: Implementar llamadas a la API pública de Rick and Morty para obtener datos de personajes.
-   **Gestión de Estado**: Usar las capacidades de Flutter para gestionar el estado de la aplicación, especialmente al marcar personajes como favoritos.
-   **Navegación**: Implementar la navegación entre diferentes pantallas de la aplicación.

### Características

-   **Lista de Personajes**: Desplazamiento infinito para cargar personajes de manera paginada en un grid view.
-   **Detalles del Personaje**: Visualización de detalles de cada personaje al hacer clic en ellos.
-   **Favoritos**: Marcar y desmarcar personajes como favoritos, y acceder a una lista de personajes favoritos.

## Tecnologías Utilizadas

- **Flutter:** Framework para el desarrollo de la aplicación móvil multiplataforma.
- **Sqflite:** Almacenamiento de datos local.

## Previsualización de la App

<table> 
<tr> 
<td>
<img src="https://i.postimg.cc/3RvkchwT/homeApp.jpg" alt="Pantalla de Inicio" width="200"/>
</td> 
<td><img src="https://i.postimg.cc/K8vmgf7h/home-favorites.jpg" alt="Pantalla de inicio con marcas de favorito" width="200"/>
</td>
 <td><img src="https://i.postimg.cc/bNPyqpsJ/favorites-Character.jpg" alt="Lista de favoritos" width="200"/></td> 
 </tr> 
 <tr> <td><img src="https://i.postimg.cc/R02myzkv/details-collector.jpg" alt="Personaje Collector" width="200"/>
 </td> 
 <td><img src="https://i.postimg.cc/9FBWMK7B/details-albert.jpg" alt="Personaje Albert Einstein" width="200"/>
 </td>
 <td><img src="https://i.postimg.cc/fR2D7d5t/details-morty.jpg" alt="Personaje Morty Smith" width="200"/></td>
 </tr> 
 </table>

## Instalación

Para ejecutar esta aplicación localmente, sigue estos pasos:

1. Clona el repositorio:
   ```bash
   git clone https://github.com/NinjaTechniques/Rick-and-Morty-Flutter.git
   ```
2. Navega al directorio del proyecto:
   ```bash
   cd Rick-and-Morty-Flutter
   ```
3. Instala las dependencias:
   ```bash
   flutter pub get
   ```
4. Ejecuta la aplicación:
   ```bash
   flutter run
   ```
### Estructura del Proyecto

-   **Pantalla de Lista de Personajes**: Muestra todos los personajes en un grid view, con desplazamiento infinito.
-   **Pantalla de Detalles del Personaje**: Muestra detalles específicos del personaje seleccionado.
-   **Favoritos**: Los personajes pueden ser marcados como favoritos y se pueden consultar en una pantalla dedicada a los personajes favoritos.
