import 'package:flutter/material.dart';

import '../stil_olustur/styles.dart';
import 'konular.dart';

class DeBaglaci extends StatelessWidget {
  const DeBaglaci({Key? key}) : super(key: key);

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
            "De Bağlacı",
            style: AppBarYazi.appbarYazi,
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\t\t\tBağlaç (edat) olan de sözcükleri, cümleleri birbirine bağlayan bir sözcüktür. Kendinden önce gelen sözcükten ayrı yazılır. De bağlacı yerine \"dahi\" veya \"bile\" kullanılabilir. Cümleden çıkarıldığı zaman cümlenin anlamı bozulmaz.",
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Örnekler",
                  style: MaviRenk.mavi,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                      text: 'Bunu sen',
                      style: SpanSiyah.siyah,
                      children: [
                    TextSpan(
                      text: ' de ',
                      style: SpanKirmizi.kirmizi,
                    ),
                    TextSpan(
                      text: 'biliyorsun.',
                      style: SpanSiyah.siyah,
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                      text: 'Arabayı ben',
                      style: SpanSiyah.siyah,
                      children: [
                        TextSpan(
                          text: ' de ',
                          style: SpanKirmizi.kirmizi,
                        ),
                        TextSpan(
                          text: 'beğendim.',
                          style: SpanSiyah.siyah,
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                      text: 'Kitap',
                      style: SpanSiyah.siyah,
                      children: [
                    TextSpan(
                      text: ' da ',
                      style: SpanKirmizi.kirmizi,
                    ),
                    TextSpan(
                      text: 'alacağım.',
                      style: SpanSiyah.siyah,
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                      text: 'Ali',
                      style: SpanSiyah.siyah,
                      children: [
                    TextSpan(
                      text: ' de ',
                      style: SpanKirmizi.kirmizi,
                    ),
                    TextSpan(
                      text: 'geldi.',
                      style: SpanSiyah.siyah,
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                      text: 'Sen',
                      style: SpanSiyah.siyah,
                      children: [
                    TextSpan(
                      text: ' de ',
                      style: SpanKirmizi.kirmizi,
                    ),
                    TextSpan(
                      text: 'gelecek misin?',
                      style: SpanSiyah.siyah,
                    ),
                  ]),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
