import 'package:flutter/material.dart';
import '../stil_olustur/styles.dart';
import 'konular.dart';

class Zamirler extends StatelessWidget {
  const Zamirler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          "Zamirler (Adıllar)",
          style: AppBarYazi.appbarYazi,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: '\t\t\tAdın/ismin yerine kullanılan kelimere',
                  style: SpanSiyah.siyah,
                  children: [
                    TextSpan(
                      text: ' zamir ',
                      style: SpanKirmizi.kirmizi,
                    ),
                    TextSpan(
                      text:
                          'denir. İnsan isminin yerini tutan bu kelimelere kişi zamiri denir.'
                              ' Kişi zamirleri tekil ve çoğul olmak üzere ikiye ayrılır.',
                      style: SpanSiyah.siyah,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Tekil Kişi Zamirleri",
                  style: MaviRenk.mavi,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: 'ben ',
                  style: SpanKirmizi.kirmizi,
                  children: [
                    TextSpan(
                      text: '1. tekil kişi',
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
                  text: 'sen ',
                  style: SpanKirmizi.kirmizi,
                  children: [
                    TextSpan(
                      text: '2. tekil kişi',
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
                  text: 'o ',
                  style: SpanKirmizi.kirmizi,
                  children: [
                    TextSpan(
                      text: '  3. tekil kişi',
                      style: SpanSiyah.siyah,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Çoğul Kişi Zamirleri",
                  style: MaviRenk.mavi,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: 'biz ',
                  style: SpanKirmizi.kirmizi,
                  children: [
                    TextSpan(
                      text: '  1. çoğul kişi',
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
                  text: 'siz ',
                  style: SpanKirmizi.kirmizi,
                  children: [
                    TextSpan(
                      text: '  2. çoğul kişi',
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
                  text: 'onlar ',
                  style: SpanKirmizi.kirmizi,
                  children: [
                    TextSpan(
                      text: '3. çoğul kişi',
                      style: SpanSiyah.siyah,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\t\t\tKişi zamirleri çekim eki/ekleri alabilirler.",
                  style: SiyahRenk.siyah,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: 'ben',
                  style: SpanKirmizi.kirmizi,
                  children: [
                    TextSpan(
                      text: 'im',
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
                  text: 'o',
                  style: SpanKirmizi.kirmizi,
                  children: [
                    TextSpan(
                      text: 'na',
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
                  text: 'sen',
                  style: SpanKirmizi.kirmizi,
                  children: [
                    TextSpan(
                      text: 'in',
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
                  text: 'onlar',
                  style: SpanKirmizi.kirmizi,
                  children: [
                    TextSpan(
                      text: 'ı',
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
                  text: 'biz',
                  style: SpanKirmizi.kirmizi,
                  children: [
                    TextSpan(
                      text: 'im',
                      style: SpanSiyah.siyah,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
