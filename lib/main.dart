import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medapmobile/routes/routes.dart';
import 'package:medapmobile/widgets/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BottomNavigation(),
      routes: routes,
    );
  }
}
