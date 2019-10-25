import 'package:flutter/material.dart';

ThemeData lightTheme() => ThemeData(
  primaryColor: Colors.white,
  primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black)),
  primaryIconTheme: IconThemeData(color: Colors.black),
  textTheme: TextTheme(title: TextStyle(color: Colors.black)),
);
