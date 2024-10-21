# Beatconnect App (NEW FEATURES AND FIX ISSUES)

Nueva version de la aplicacion Beatconnect, plataforma de redes sociales musicales diseñada para conectar a amantes de la música con establecimientos y eventos en vivo. Nuestra aplicación móvil permite a los usuarios descubrir nuevas canciones, explorar el historial de música escuchada por sus amigos, interactuar con amigos, seguir a sus artistas favoritos y encontrar los mejores lugares para disfrutar de la música en vivo.

![logo](https://github.com/user-attachments/assets/33d03376-f4b0-4655-a650-2d0aed790f76)

## Arquitectura del proyecto: ### `Modelo-Vista-Controlador (MVC)`

El proyecto está organizado siguiendo un modelo arquitectónico modular inspirado en el patrón Modelo-Vista-Controlador (MVC), pero adaptado a la naturaleza declarativa de Flutter.

```plaintext
lib/
├── controllers/
├── models/
├── services/
│   ├── api/
│   └── firebase/
├── ui/
│   ├── app.dart
│   ├── auth/
│   ├── intro/
│   │   └── Intro.dart
│   ├── root/
│   │   └── root_view.dart
│   └── views/
│       └── Feed_view.dart
├── widgets/
└── main.dart
```

## Empezando

![flutter](https://github.com/user-attachments/assets/05cc32dc-4ba2-435f-b7dd-7a36a05d5966)

Este proyecto es un punto de partida para una aplicación Flutter.

Algunos recursos para ayudarte a comenzar si este es tu primer proyecto de Flutter:

- [Laboratorio: escribe tu primera aplicación Flutter](https://docs.flutter.dev/get-started/codelab)
- [Libro de cocina: muestras útiles de Flutter](https://docs.flutter.dev/cookbook)

Para obtener ayuda para comenzar con el desarrollo de Flutter, consulte la
[documentación en línea](https://docs.flutter.dev/), que ofrece tutoriales,
ejemplos, orientación sobre desarrollo móvil y una referencia API completa.
