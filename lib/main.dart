import 'package:exam_1_af/View/Screens/detail_page.dart';
import 'package:exam_1_af/View/Screens/intro_screen.dart';
import 'package:exam_1_af/View/Screens/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'View/Screens/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool isvisited = preferences.getBool("isIntroVisited") ?? false;

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true),
    initialRoute: (isvisited) ? 'splash' : '/',
    routes: {
      '/': (context) => intro_page(),
      'splash': (context) => Splash(),
      'home': (context) => HomePage(),
      'detail': (context) => Detail(),
    },
  ));
}
