import 'package:familytasks/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../values/icons.dart';


List<Icon> icons() {
  return const [
    Icon(
      IconData(0xf01f3, fontFamily: 'MaterialIcons'),
      color: Colors.amber,
    ),
    Icon(
      IconData(0xf02c7, fontFamily: 'MaterialIcons'),
      color: blue,
    ),
    Icon(
      IconData(0xe231, fontFamily: 'MaterialIcons'),
      color: green,
    ),
    Icon(
      IconData(0xf0171, fontFamily: 'MaterialIcons'),
      color: yellow,
    ),
    Icon(
      IconData(0xe1d0, fontFamily: 'MaterialIcons'),
      color: pink,
    ),
    Icon(
      IconData(0xf01bc, fontFamily: 'MaterialIcons'),
      color: Colors.red,
    ),
  ];
}

