import 'package:familytasks/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../values/icons.dart';

List<Icon> icons() {
  return const [
    Icon(
      IconData(userIcon),
      color: blue,
    ),
    Icon(
      IconData(jobIcon),
      color: Colors.black,
    ),
    Icon(
      IconData(sportIcon),
      color: green,
    ),
    Icon(
      IconData(shopIcon),
      color: yellow,
    ),
    Icon(
      IconData(dinnerIcon),
      color: pink,
    ),
    Icon(
      IconData(gameIcon),
      color: purple,
    ),
  ];
}
