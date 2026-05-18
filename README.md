# ✈️ Book Tickets — Flutter App

App de reserva de vuelos y hoteles construida con Flutter
 <!-- basada en el tutorial de [dbestech.com](https://www.dbestech.com/tutorials/flutter-ticket-booking-app). -->

---

## Pantallas

### 1. Home
- Saludo dinámico ("Good Morning")
- Barra de búsqueda global
- Sección **Upcoming Flights** — tarjetas horizontales con origen, destino, duración, fecha y hora
- Sección **Hotels** — grid de imágenes con nombre y precio

### 2. Search
- Tabs: **Airline Tickets** / **Hotels**
- Campos de **Departure** y **Arrival**
- Botón **Find Tickets**
- Sección de vuelos próximos con tarjetas promocionales (ej. "Discount for survey")

### 3. Tickets
- Tabs: **Upcoming** / **Previous**
- Tarjeta de boarding pass con:
  - Ruta (NYC → LDN), duración del vuelo
  - Fecha, hora de salida, número de vuelo
  - Pasajero y número de pasaporte
  - Número de e-ticket y booking code
  - Método de pago (VISA) y precio
  - Código de barras al pie

### 4. Profile
- Nombre y ciudad del usuario, **Premium status**
- Banner de logro ("You've got a new award")
- Contador de **Accumulated Miles** (ej. 192,802)
- Historial de millas por fuente (aerolínea, restaurantes, etc.)
- Link "How to get more miles"

---

## Bottom Navigation Bar

4 tabs con íconos:

| Tab | Pantalla |
|-----|----------|
| Home | `HomeScreen` |
| Search | `SearchScreen` |
| Tickets | `TicketScreen` |
| Profile | `ProfileScreen` |

---

## Estructura del proyecto

```
lib/
├── main.dart
├── utils/
│   ├── app_colors.dart       # Paleta de colores (azul marino, coral, blanco)
│   ├── app_styles.dart       # TextStyles reutilizables
│   └── app_routes.dart       # Rutas nombradas
├── screens/
│   ├── bottom_bar.dart       # Navegación principal
│   ├── home_screen.dart      # Vuelos y hoteles destacados
│   ├── search_screen.dart    # Búsqueda con tabs y formulario
│   ├── ticket_screen.dart    # Lista de tickets (upcoming/previous)
│   ├── ticket_view.dart      # Detalle del boarding pass
│   └── profile_screen.dart   # Perfil y millas acumuladas
├── widgets/
│   ├── ticket_widget.dart    # Boarding pass con CustomClipper
│   ├── column_layout.dart    # Par título + valor (vertical)
│   ├── app_icon_text.dart    # Ícono + texto en fila
│   └── hotel_card.dart       # Tarjeta de hotel con imagen
└── data/
    └── app_data.dart         # Tickets y hoteles de ejemplo
```

---

## Colores principales

| Uso | Color |
|-----|-------|
| Ticket / primario | `#526799` (azul marino) |
| Ticket secundario | `#F37B67` (coral) |
| Fondo | `#EBECF3` (gris claro) |
| Texto principal | `#3D3D3D` |
| Acento / botones | `#2C51DD` (azul brillante) |

<!-- --- -->

<!-- ## Datos de ejemplo

```dart
// lib/data/app_data.dart

final ticketList = [
  {
    'from': {'code': 'NYC', 'name': 'New-York'},
    'to':   {'code': 'LDN', 'name': 'London'},
    'flying_time': '8H 30M',
    'date': '1 MAY',
    'departure_time': '08:00 AM',
    'number': 23,
  },
];

final hotelList = [
  {'image': 'one.png',    'place': 'Open Space',       'destination': 'London', 'price': 25},
  {'image': 'two.png',    'place': 'Global Will',      'destination': 'London', 'price': 40},
  {'image': 'three.png',  'place': 'Tallest Building', 'destination': 'Dubai',  'price': 68},
];
``` -->

---

## Rutas

```dart
class AppRoutes {
  static const homePage    = '/';
  static const allTickets  = '/all_tickets';
  static const ticketView  = '/ticket_view';
  static const allHotels   = '/all_hotels';
  static const hotelDetail = '/hotel_detail';
}
```

---

## Dependencias

```yaml
dependencies:
  flutter:
    sdk: flutter
  get: ^4.6.5             # Navegación y state management
  fluentui_icons: ^1.0.0  # Íconos del bottom nav
```

```bash
flutter pub get
```

---

## Requisitos
Flutter 3.41.9 (stable)
Dart 3.11.5 (stable)
Android SDK 36.1.0+

- Flutter **3.41.9 (stable)**
- Dart **3.11.5 (stable)**
- Android SDK **36.1.0+**

---

## Instalación

```bash
git clone https://github.com/YUHR24/ticket-booking-app_flutter.git
cd ticket-booking-app
flutter pub get
flutter run
```

---

## Assets

```yaml
# pubspec.yaml
flutter:
  assets:
    - assets/images/
```
