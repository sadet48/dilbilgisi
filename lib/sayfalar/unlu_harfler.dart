import 'package:flutter/material.dart';
import '../stil_olustur/styles.dart';
import 'konular.dart';

class UnluHarfler extends StatelessWidget {
  const UnluHarfler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UnluHarflerimiz(),
    );
  }
}

class UnluHarflerimiz extends StatelessWidget {
  const UnluHarflerimiz({Key? key}) : super(key: key);

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
          "Ünlü Harfler",
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
                  "\t\t\tDilimizde 8 tane ünlü harf bulunur. ",
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                      text: 'Ünlü Harflerimiz : ',
                      style: SpanKirmizi.kirmizi,
                      children: [
                        TextSpan(
                          text: ' a, e, ı, i, o, ö, u, ü',
                          style: SpanSiyah.siyah,
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Çıkış yerleri ve durumlarına göre;",
                  style: MaviRenk.mavi,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: Table(
                  border: TableBorder.all(
                    color: const Color(0xffdddddd),
                  ),
                  defaultColumnWidth: const FixedColumnWidth(
                    150.0,
                  ),
                  children: [
                    buildRow(['Kalın Ünlüler', 'İnce Ünlüler']),
                    buildRow([
                      'a, ı, o, u',
                      'e, i, ö, ü',
                    ]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Dudakların durumuna göre;",
                  style: MaviRenk.mavi,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: Table(
                  border: TableBorder.all(
                    color: const Color(0xffdddddd),
                  ),
                  defaultColumnWidth: const FixedColumnWidth(
                    150.0,
                  ),
                  children: [
                    buildRow(['Düz Ünlüler', 'Yuvarlak Ünlüler']),
                    buildRow([
                      'a, e, ı, i',
                      'o, ö, u, ü',
                    ]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Ağzın açıklığına göre;",
                  style: MaviRenk.mavi,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child: Table(
                  border: TableBorder.all(
                    color: const Color(0xffdddddd),
                  ),
                  defaultColumnWidth: const FixedColumnWidth(
                    150.0,
                  ),
                  children: [
                    buildRow(['Geniş Ünlüler', 'Dar Ünlüler']),
                    buildRow([
                      'a, e, o, ö',
                      'ı, i, u, ü',
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

TableRow buildRow(List<String> cells) => TableRow(
  children: cells
      .map((cells) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      cells,
      style: SpanSiyah.siyah,
    ),
  ))
      .toList(),
);
