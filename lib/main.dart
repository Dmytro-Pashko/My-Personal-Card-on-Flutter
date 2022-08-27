import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_personal_card/my_card_widget.dart';

void main() {
  runApp(const MyCardWidget());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
