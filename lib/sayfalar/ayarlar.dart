import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:turkce_dilbilgisi/renk_olustur/renkler.dart';
import 'package:turkce_dilbilgisi/stil_olustur/styles.dart';
import 'package:flip_card/flip_card.dart';

class UygulamayiKapat extends StatefulWidget {
  const UygulamayiKapat({Key? key}) : super(key: key);

  @override
  State<UygulamayiKapat> createState() => _UygulamayiKapatState();
}

class _UygulamayiKapatState extends State<UygulamayiKapat> {
  late ConfettiController confettiController;

  @override
  void initState() {
    super.initState();
    confettiController =
        ConfettiController(duration: const Duration(milliseconds: 300));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Renkler.beyaz,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Ayarlar",
            style: AppBarYazi.appbarYazi,
          ).animate().fadeIn(delay: const Duration(milliseconds: 500)),
          centerTitle: true,
          actions: [
            InkWell(
              onTap: () {
                Fluttertoast.showToast(
                    msg: 'Ayarlar',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    backgroundColor: Colors.redAccent);
                SystemNavigator.pop();
              },
              child: const Row(
                children: [
                  Icon(Icons.exit_to_app),
                  SizedBox(
                    width: 8.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Çıkış"),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    confettiController.play();
                  },
                  child: Center(
                    child: FlipCard(
                      direction: FlipDirection.HORIZONTAL,
                      speed: 500,
                      onFlip: () {
                        // print("Flip Card");
                      },
                      front: Card(
                        color: Renkler.lavantaLight,
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 250.0,
                                height: 150.0,
                                color: Colors.transparent,
                                child: Expanded(
                                  flex: 4,
                                  child: SvgPicture.asset(
                                    'assets/images/egitim.svg',
                                    width: 250.0,
                                    height: 150.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Expanded(
                                  flex: 1,
                                  child: Text(
                                    "Flip Kart Ön",
                                    style: GoogleFonts.comfortaa(
                                        fontSize: 16.0, color: Renkler.siyah),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      back: Card(
                        color: Renkler.lavantaLight,
                        elevation: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 250.0,
                                height: 150.0,
                                color: Colors.transparent,
                                child: Expanded(
                                  flex: 4,
                                  child: Lottie.network(
                                    "https://lottie.host/1d48751b-3d51-425f-bb82-4577ad3c1637/8ipb5DpoSk.json",
                                    width: 250.0,
                                    height: 150.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Expanded(
                                  flex: 1,
                                  child: Text(
                                    "Flip Kart Arka",
                                    style: GoogleFonts.comfortaa(
                                        fontSize: 16.0, color: Renkler.siyah),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: ConfettiWidget(
                  confettiController: confettiController,
                  numberOfParticles: 10,
                  maxBlastForce: 20,
                  minBlastForce: 5,
                  blastDirection: pi,
                  blastDirectionality: BlastDirectionality.explosive,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

void cikisYap() {
  Fluttertoast.showToast(
      msg: 'Uygulama Kapatıldı...',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent);
  SystemNavigator.pop();
}
