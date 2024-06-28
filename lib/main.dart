import 'package:flutter/material.dart';
import 'package:tsel_appsuas/screens/bottom_nav_bar.dart';
import 'package:tsel_appsuas/splashscreen.dart';
import 'package:tsel_appsuas/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'My Telkomnyet',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(bottomNavigationBarTheme: BottomNavigationBarThemeData
    (selectedItemColor: blackcolor,),
    ),
   routes: {
        '/': (context) => SplashScreen(),
        '/main': (context) => BottomNavBar(), // Ganti dengan halaman utama Anda
      },
    );
  }
}
