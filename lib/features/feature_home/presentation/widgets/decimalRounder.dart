import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class DecimalRounder {
  static Color setPercentChangesColor(num? percent24) {
    Color percentColor;
    if (percent24! < 0) {
      percentColor = Colors.red;
    } else if (percent24 > 0) {
      percentColor = Colors.green;
    } else {
      percentColor = Colors.white12;
    }
    return percentColor;
  }

  static Icon setPercentChangesIcon(num? percent24) {
    Icon percentIcon;

    if (percent24! < 0) {
      percentIcon = const Icon(
        Icons.arrow_drop_down,
        color: Colors.red,
      );
    } else if (percent24 > 0) {
      percentIcon = const Icon(
        Icons.arrow_drop_up,
        color: Colors.green,
      );
    } else {
      percentIcon = const Icon(
        Icons.minimize,
        color: Colors.grey,
      );
    }

    return percentIcon;
  }
}
