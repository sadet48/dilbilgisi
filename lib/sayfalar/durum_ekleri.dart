import 'package:flutter/material.dart';
import '../stil_olustur/styles.dart';
import 'konular.dart';

class DurumEkleri extends StatelessWidget {
  const DurumEkleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DurumEklerininYazimi(),
    );
  }
}
class DurumEklerininYazimi extends StatelessWidget {
  const DurumEklerininYazimi({Key? key}) : super(key: key);

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
          "Durum / Hâl Ekleri",
          style: AppBarYazi.appbarYazi,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "\t\t\tDurum ekleri bitişik yazılır. Durum ekleri dörde ayrılır. Bunlar belirtme durumu, yönelme durumu, bulunma durumu ve ayrılma durumudur.",
                  style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Örnekler", style: MaviRenk.mavi),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                    text: 'ev',
                    style: SpanSiyah.siyah,
                    children: [
                      TextSpan(
                        text: 'i ',
                        style: SpanKirmizi.kirmizi,
                      ),
                      TextSpan(
                        text: '-> belirtme durumu',
                        style: SpanSiyah.siyah,
                      ),
                    ]
                ),
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
                        text: 'e ',
                        style: SpanKirmizi.kirmizi,
                      ),
                      TextSpan(
                        text: '-> yönelmeme durumu',
                        style: SpanSiyah.siyah,
                      ),
                    ]
                ),
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
                        text: 'de ',
                        style: SpanKirmizi.kirmizi,
                      ),
                      TextSpan(
                        text: '-> bulunma durumu',
                        style: SpanSiyah.siyah,
                      ),
                    ]
                ),
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
                        text: 'den ',
                        style: SpanKirmizi.kirmizi,
                      ),
                      TextSpan(
                        text: '-> ayrılma durumu',
                        style: SpanSiyah.siyah,
                      ),
                    ]
                ),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                    text: 'okul',
                    style: SpanSiyah.siyah,
                    children: [
                      TextSpan(
                        text: 'u ',
                        style: SpanKirmizi.kirmizi,
                      ),
                      TextSpan(
                        text: '-> belirtme durumu',
                        style: SpanSiyah.siyah,
                      ),
                    ]
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                    text: 'okul',
                    style: SpanSiyah.siyah,
                    children: [
                      TextSpan(
                        text: 'a ',
                        style: SpanKirmizi.kirmizi,
                      ),
                      TextSpan(
                        text: '-> yönelme durumu',
                        style: SpanSiyah.siyah,
                      ),
                    ]
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                    text: 'okul',
                    style: SpanSiyah.siyah,
                    children: [
                      TextSpan(
                        text: 'da ',
                        style: SpanKirmizi.kirmizi,
                      ),
                      TextSpan(
                        text: '-> bulunma durumu',
                        style: SpanSiyah.siyah,
                      ),
                    ]
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                    text: 'okul',
                    style: SpanSiyah.siyah,
                    children: [
                      TextSpan(
                        text: 'dan ',
                        style: SpanKirmizi.kirmizi,
                      ),
                      TextSpan(
                        text: '-> ayrılma durumu',
                        style: SpanSiyah.siyah,
                      ),
                    ]
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "\t\t\tDurum eki alan kelimeler, başka çekim veya yapım eklerini alabilirler.",
                  style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Örnek", style: MaviRenk.mavi),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                    text: 'Okulda',
                    style: SpanSiyah.siyah,
                    children: [
                      TextSpan(
                        text: 'ki',
                        style: SpanKirmizi.kirmizi,
                      ),
                      TextSpan(
                        text: ' dersler çok iyi.',
                        style: SpanSiyah.siyah,
                      ),
                    ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

