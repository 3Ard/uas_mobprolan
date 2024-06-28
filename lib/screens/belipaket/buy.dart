import 'package:flutter/material.dart';
import 'componen/header.dart';
import 'componen/content.dart';
import 'dart:ui';

class Belipaket extends StatelessWidget {
  const Belipaket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/img_background_header.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            height: 300,
          ),
          // Blur effect
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
          // Gradient overlay
          Container(
            height: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.white.withOpacity(0.5),
                ],
              ),
            ),
          ),
          Container(
            child: ListView(
              children: [
                Header(),
                Paket()
              ],
            ),
          )
        ],
      ),
    );
  }
}