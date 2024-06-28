import 'package:flutter/material.dart';
import 'package:tsel_appsuas/screens/belipaket/buy.dart';
import 'package:tsel_appsuas/screens/explore/explore.dart';
import 'package:tsel_appsuas/screens/home/home.dart';
import 'package:tsel_appsuas/screens/menu/menu.dart';
import 'package:tsel_appsuas/screens/poin/poin.dart';
import 'package:tsel_appsuas/themes.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final _screens = [
    HomePage(),
    Belipaket(),
    Menu(),
    Poin(),
    ExploreApp(),
  ];
  @override
  Widget build(BuildContext context) {
    Widget CustomNavbar(){
      return BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (i) => setState(() => _selectedIndex = i),
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: buttonnavtext,
        unselectedLabelStyle: buttonnavtext,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Image.asset('assets/icons/icon-home.png', 
              width: 21,
              color:  _selectedIndex == 0 ? blackcolor : greyColor,
              ),
          ), 
          label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Image.asset('assets/icons/icon-cart.png', 
              width: 24,
              color:  _selectedIndex == 1 ? blackcolor : greyColor,
              ),
          ), 
          label: 'Beli Paket',
          ),
          BottomNavigationBarItem(
            icon: Container(
              child: Image.asset('assets/icons/icon-menu.png', 
              width: 80,
              ),
          ), 
          label: 'Menu'
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Image.asset('assets/icons/icon-trofi.png',
              width: 24,
              color:  _selectedIndex == 3 ? blackcolor : greyColor,
              ),
          ), 
          label: 'Poin',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Image.asset('assets/icons/icon-rocket.png', 
              width: 24,
              color:  _selectedIndex == 4 ? blackcolor : greyColor,
              ),
          ), 
          label: 'Explore',
          )
        ],
      );
    }
    return Scaffold(
      bottomNavigationBar: CustomNavbar(),
      body: Stack(
        children: _screens
          .asMap()
          .map((i,  screen) => MapEntry(
            i, 
            Offstage(
              offstage: _selectedIndex !=i,
              child: screen,
              )))
          .values
          .toList(),
      ),
    );
  }
}