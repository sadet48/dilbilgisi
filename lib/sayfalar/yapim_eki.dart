import 'package:flutter/material.dart';
import 'package:turkce_dilbilgisi/stil_olustur/styles.dart';

import 'konular.dart';

class YapimEkleri extends StatelessWidget {
  const YapimEkleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Konular()));
            },
            child: const Icon(Icons.arrow_back),
          ),
          title: Text(
            "Yapım Eki",
            style: AppBarYazi.appbarYazi,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.all(10.0),
                child: Text(
                    "\t\t\t Kelimenin hiç ek almamış hâline kök denir.Türkçe sondan eklemeli bir dildir. Kelimenin köküne yapım ekleri alarak yeni anlamlı kelimeler türetilir. Bu eklere yapım ekleri denir.",
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(padding: const EdgeInsets.all(10.0),
                child: Text(
                  "\t\t\tYapım ekleri kelime türetmeye yarar. \nEk alan kelimenin anlamı değişir.",
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Örnekler",
                  style: MaviRenk.mavi,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: 'su',
                    style: SpanSiyah.siyah,
                    children: [
                      TextSpan(
                        text: 'cu',
                        style: SpanKirmizi.kirmizi,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: 'çiçek',
                    style: SpanSiyah.siyah,
                    children: [
                      TextSpan(
                        text: 'çi',
                        style: SpanKirmizi.kirmizi,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: 'simit',
                    style: SpanSiyah.siyah,
                    children: [
                      TextSpan(
                        text: 'çi',
                        style: SpanKirmizi.kirmizi,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: 'yol',
                    style: SpanSiyah.siyah,
                    children: [
                      TextSpan(
                        text: 'luk',
                        style: SpanKirmizi.kirmizi,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: 'göz',
                    style: SpanSiyah.siyah,
                    children: [
                      TextSpan(
                        text: 'lük',
                        style: SpanKirmizi.kirmizi,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: 'kalem',
                    style: SpanSiyah.siyah,
                    children: [
                      TextSpan(
                        text: 'lik',
                        style: SpanKirmizi.kirmizi,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: 'anahtar',
                    style: SpanSiyah.siyah,
                    children: [
                      TextSpan(
                        text: 'lık',
                        style: SpanKirmizi.kirmizi,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: 'kömür',
                    style: SpanSiyah.siyah,
                    children: [
                      TextSpan(
                        text: 'lük',
                        style: SpanKirmizi.kirmizi,
                      ),
                    ],
                  ),
                ),
              ),

              Padding(padding: const EdgeInsets.all(10.0),
                child: Text(
                  "\t\t\tBir kelime birden fazla yapım eki alabilir.",
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: 'göz',
                    style: SpanSiyah.siyah,
                    children: [
                      TextSpan(
                        text: 'lük',
                        style: SpanKirmizi.kirmizi,
                      ),
                      TextSpan(
                        text: 'çü',
                        style: SpanSiyah.siyah,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
