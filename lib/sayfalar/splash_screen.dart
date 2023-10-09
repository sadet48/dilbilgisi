import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:turkce_dilbilgisi/renk_olustur/renkler.dart';

import 'ana_sayfa.dart';

void main() => runApp(const SplashScreen());

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Türkçe Dilbilgisi',
      home: AnimatedSplashScreen(
          splashIconSize: double.infinity,
          duration: 3000,
          splash: CircleAvatar(
            radius: 100.0,
            backgroundColor: Renkler.lavantaLight,
            child: Lottie.network('https://lottie.host/c8499a91-0a3e-4132-9f88-bedaa93da0cb/nRMBcpLZUy.json'),
          ),
          nextScreen: const AnaSayfa(),
          backgroundColor: Renkler.beyaz),
    );
  }
}
