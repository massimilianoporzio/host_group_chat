import 'package:flutter/material.dart';

final Color darkPrimaryColor = Color.fromRGBO(49, 155, 60, 1);
final Color lightPrimaryColor = Color.fromRGBO(200, 230, 201, 1);
final Color primaryColor = Color.fromRGBO(76, 175, 80, 1);
final Color colorD96F43 = Color(0xFFD96F43);
final Color textIconColor = Color.fromRGBO(225, 255, 255, 1);
final Color textPrimaryColor = Color.fromRGBO(33, 33, 33, 1);
final Color dividerColor = Color.fromRGBO(189, 189, 189, 1);
final Color textIconColorGray = Colors.black.withOpacity(0.9);
final Color greenColor = Color.fromRGBO(76, 175, 80, 1);
final Color color747480 = Color(0xFF747480);
final Color colorC1C1C1 = Color(0xFFC1C1C1);

class Palette {
  static const MaterialColor kToDark = MaterialColor(
    0xff31A53C, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff2c9536), //10%
      100: Color(0xff278430), //20%
      200: Color(0xff22732a), //30%
      300: Color(0xff1d6324), //40%
      400: Color(0xff19531e), //50%
      500: Color(0xff144218), //60%
      600: Color(0xff0f3112), //70%
      700: Color(0xff0a210c), //80%
      800: Color(0xff051006), //90%
      900: Color(0xff000000), //100%
    },
  );
}
