import 'package:flutter/material.dart';

import '../stil_olustur/styles.dart';
import 'konular.dart';

class Sifatlar extends StatelessWidget {
  const Sifatlar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SifatKavrami(),
    );
  }
}

class SifatKavrami extends StatefulWidget {
  const SifatKavrami({Key? key}) : super(key: key);

  @override
  State<SifatKavrami> createState() => _SifatKavramiState();
}

class _SifatKavramiState extends State<SifatKavrami> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Konular()));
          },
          child: const Icon(Icons.arrow_back),
        ),
        title: Text(
          "Sıfatlar",
          style: AppBarYazi.appbarYazi,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "\t\t\tİsimlerden önce gelerek onların anlamlarını sayı, renk, durum, hareket, biçim, yer, işaret ve soru yönlerinden tamamlayan; onları niteleyen ve belirten kelimelere sıfat (ön ad) denir.",
                style: SiyahRenk.siyah,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: 'kırmızı',
                  style: SpanKirmizi.kirmizi,
                  children: [
                    TextSpan(
                      text: ' elma',
                      style: SpanSiyah.siyah,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: 'bazı',
                  style: SpanKirmizi.kirmizi,
                  children: [
                    TextSpan(
                      text: ' ağaçlar',
                      style: SpanSiyah.siyah,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: 'iki',
                  style: SpanKirmizi.kirmizi,
                  children: [
                    TextSpan(
                      text: ' araba',
                      style: SpanSiyah.siyah,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: 'eski',
                  style: SpanKirmizi.kirmizi,
                  children: [
                    TextSpan(
                      text: ' ev',
                      style: SpanSiyah.siyah,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: 'kaç',
                  style: SpanKirmizi.kirmizi,
                  children: [
                    TextSpan(
                      text: ' çocuk',
                      style: SpanSiyah.siyah,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: 'bu',
                  style: SpanKirmizi.kirmizi,
                  children: [
                    TextSpan(
                      text: ' kedi',
                      style: SpanSiyah.siyah,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: 'çalışkan',
                  style: SpanKirmizi.kirmizi,
                  children: [
                    TextSpan(
                      text: ' öğrenci',
                      style: SpanSiyah.siyah,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
