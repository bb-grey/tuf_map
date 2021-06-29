import 'package:flutter/material.dart';
import 'package:tuf_map/constants.dart';
import 'package:tuf_map/routes.dart';
import 'package:tuf_map/screens/splash_screen_layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0.0),
        ),
      ),
      home: SplashScreenLayout(),
      routes: routes,
    );
  }
}
