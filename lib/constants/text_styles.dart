import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

TextStyle kSymbolStyle = TextStyle(color: Colors.white, fontSize: 100);

TextStyle kAtomicNumberStyle = TextStyle(color: Colors.white, fontSize: 30);

TextStyle kNameStyle(Color elementColor) {
  return TextStyle(
      fontSize: 30, color: elementColor, fontWeight: FontWeight.w500);
}

TextStyle kPropertyStyle = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w300,
    letterSpacing: 1);
