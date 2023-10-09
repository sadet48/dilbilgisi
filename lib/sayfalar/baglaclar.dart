import 'package:flutter/material.dart';

import '../stil_olustur/styles.dart';
import 'konular.dart';

class Baglaclar extends StatelessWidget {
  const Baglaclar({Key? key}) : super(key: key);

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
            "Bağlaçlar",
            style: AppBarYazi.appbarYazi,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text.rich(
                  TextSpan(
                    text:
                        '\t\t\tTek başına bir anlamı olmayan, anlamca birbiriyle ilişkili tümceleri veya tümcede görevdeş kelimeleri ve kelime öbeklerini bağlayan kelimelere',
                    style: SiyahRenk.siyah,
                    children: [
                      TextSpan(
                        text: ' bağlaç ',
                        style: KirmiziRenk.kirmizi,
                      ),
                      TextSpan(
                        text: 'denir.',
                        style: SiyahRenk.siyah,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\t\t\tBağlaçlar tümceden çıkarılınca tümcenin anlamı bozulmaz, ama daralabilir. Bağlaçlar kendinden önce ve sonra gelen kelimelerden ayrı yazılırlar.",
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
                child: Text.rich(
                  TextSpan(
                    text:
                    'Ali',
                    style: SiyahRenk.siyah,
                    children: [
                      TextSpan(
                        text: ' ile ',
                        style: KirmiziRenk.kirmizi,
                      ),
                      TextSpan(
                        text: 'Veli top oynadılar.',
                        style: SiyahRenk.siyah,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text.rich(
                  TextSpan(
                    text:
                    'Pazardan elma, armut',
                    style: SiyahRenk.siyah,
                    children: [
                      TextSpan(
                        text: ' ve ',
                        style: KirmiziRenk.kirmizi,
                      ),
                      TextSpan(
                        text: 'muz aldılar.',
                        style: SiyahRenk.siyah,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text.rich(
                  TextSpan(
                    text:
                    'Fatma',
                    style: SiyahRenk.siyah,
                    children: [
                      TextSpan(
                        text: ' da ',
                        style: KirmiziRenk.kirmizi,
                      ),
                      TextSpan(
                        text: 'kitap okudu.',
                        style: SiyahRenk.siyah,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text.rich(
                  TextSpan(
                    text:
                    'Hemen içeri girdim,',
                    style: SiyahRenk.siyah,
                    children: [
                      TextSpan(
                        text: ' çünkü ',
                        style: KirmiziRenk.kirmizi,
                      ),
                      TextSpan(
                        text: 'yağmur başlamıştı.',
                        style: SiyahRenk.siyah,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text.rich(
                  TextSpan(
                    text:
                    'Sen',
                    style: SiyahRenk.siyah,
                    children: [
                      TextSpan(
                        text: ' ya da ',
                        style: KirmiziRenk.kirmizi,
                      ),
                      TextSpan(
                        text: 'kardeşin gelebilir.',
                        style: SiyahRenk.siyah,
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
