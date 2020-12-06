import 'package:flutter/material.dart';
import 'package:temp/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      home: HomePage(),
    );
  }
}
