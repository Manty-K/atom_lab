import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

TextStyle kSymbolStyle = TextStyle(color: Colors.white, fontSize: 100);

TextStyle kAtomicNumberStyle = TextStyle(color: Colors.white, fontSize: 20);

TextStyle kNameStyle(Color elementColor) {
  return TextStyle(
      fontSize: 20, color: elementColor, fontWeight: FontWeight.w500);
}

TextStyle kPropertyStyle = TextStyle(
    color: Colors.white,
    fontSize: 15,
    fontWeight: FontWeight.w300,
    letterSpacing: 1);
