import 'dart:async';
import 'dart:math';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:turkce_dilbilgisi/sayfalar/konular.dart';
import 'package:turkce_dilbilgisi/stil_olustur/styles.dart';
import '../renk_olustur/renkler.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  late ConfettiController confettiController;

  @override
  void initState() {
    super.initState();
    confettiController =
        ConfettiController(duration: const Duration(milliseconds: 300));
  }

  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: isSwitched == true ? Renkler.beyaz : Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          title: Text(
            "Anasayfa",
            style: AppBarYazi.appbarYazi,
          ).animate().fadeIn(delay: const Duration(milliseconds: 500)),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      confettiController.play();
                    },
                    child: Column(
                      children: [
                        StreamBuilder(
                          stream: streamColor(),
                          builder: (BuildContext context,
                              AsyncSnapshot<Color> snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const CircularProgressIndicator();
                            } else if (snapshot.hasError) {
                              return const Text("Veri gelmedi.");
                            } else {
                              return Container(
                                height: 170.0,
                                width: 250.0,
                                decoration: BoxDecoration(
                                  color: snapshot.data,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Expanded(
                                  flex: 2,
                                  child: SvgPicture.asset(
                                    'assets/images/egitim.svg',
                                    height: 170.0,
                                    width: 250.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Konular()));
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Expanded(
                              flex: 1,
                              child: Text(
                                "Türkçe Dilbilgisi",
                                style: TextStyle(
                                  fontFamily: 'TTKB Dik Temel Abece',
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.bold,
                                  color: isSwitched == true
                                      ? Renkler.siyah
                                      : Renkler.beyaz,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Stream<Color> streamColor() {
    return Stream.periodic(const Duration(milliseconds: 1000), (count) {
      if (count % 2 == 0) {
        return Renkler.arkaplanRengi;
      } else {
        return Renkler.lavantaLight;
      }
    });
  }
}
