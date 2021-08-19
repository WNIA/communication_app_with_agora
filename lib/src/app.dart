import 'package:flutter/material.dart';
import 'package:flutter_communication_app/src/views/utils/colors.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Neris',
        primarySwatch: MaterialColor(0xFF5D284A, colorMap),
      ),
    );
  }
}
