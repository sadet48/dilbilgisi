import 'package:flutter/material.dart';
import 'package:turkce_dilbilgisi/stil_olustur/styles.dart';

import 'konular.dart';

class Ekler extends StatelessWidget {
  const Ekler({Key? key}) : super(key: key);

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
          title: const Text("Ekler"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\t\t\tTürkçede ekler, yapım eki ve çekim eki olmak üzere ikiye ayrılır.",
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\t\t\tÇekim ekleri ve çoğul ekleri kelimenin anlamını değiştirmez. Yapım ekleri ise kelimenin anlamını değiştirir.",
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Örnekler", style: MaviRenk.mavi),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(text: 'su', style: SpanSiyah.siyah, children: [
                    TextSpan(
                      text: 'cu',
                      style: SpanKirmizi.kirmizi,
                    ),
                    TextSpan(
                      text: ' -> yapım eki almış',
                      style: SpanSiyah.siyah,
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text:
                      TextSpan(text: 'yol', style: SpanSiyah.siyah, children: [
                    TextSpan(
                      text: 'cu',
                      style: SpanKirmizi.kirmizi,
                    ),
                    TextSpan(
                      text: ' -> yapım eki almış',
                      style: SpanSiyah.siyah,
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                      text: 'şeker',
                      style: SpanSiyah.siyah,
                      children: [
                        TextSpan(
                          text: 'ci',
                          style: SpanKirmizi.kirmizi,
                        ),
                        TextSpan(
                          text: ' -> yapım eki almış',
                          style: SpanSiyah.siyah,
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text:
                      TextSpan(text: 'elma', style: SpanSiyah.siyah, children: [
                    TextSpan(
                      text: 'lar',
                      style: SpanKirmizi.kirmizi,
                    ),
                    TextSpan(
                      text: ' -> çekim eki almış',
                      style: SpanSiyah.siyah,
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(text: 'ev', style: SpanSiyah.siyah, children: [
                    TextSpan(
                      text: 'im',
                      style: SpanKirmizi.kirmizi,
                    ),
                    TextSpan(
                      text: ' -> çekim eki almış',
                      style: SpanSiyah.siyah,
                    ),
                  ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                      text: 'ev',
                      style: SpanSiyah.siyah,
                      children: [
                        TextSpan(
                          text: 'de',
                          style: SpanKirmizi.kirmizi,
                        ),
                        TextSpan(
                          text: ' -> çekim eki almış',
                          style: SpanSiyah.siyah,
                        ),
                      ]
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
