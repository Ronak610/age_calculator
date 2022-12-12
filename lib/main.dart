
import 'package:age_calculator/age.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'/': (context) => agecalcutor()},
    ),
  );
}
