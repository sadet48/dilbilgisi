import 'package:flutter/material.dart';
import 'package:turkce_dilbilgisi/stil_olustur/styles.dart';
import 'konular.dart';

class UnsuzHarfler extends StatelessWidget {
  const UnsuzHarfler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SessizHarflerimiz(),
    );
  }
}
class SessizHarflerimiz extends StatelessWidget {
  const SessizHarflerimiz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Konular()));
          },
          child: const Icon(Icons.arrow_back),
        ),
        title: Text(
          "Ünsüz Harfler",
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
                    "\t\t\t\tDilimizde 21 tane ünsüz harf (sessiz harf) vardır. ",
                    style: SiyahRenk.siyah,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text:TextSpan(
                        text: 'Ünsüz harfler:',
                        style: SpanKirmizi.kirmizi,
                        children: [
                          TextSpan(
                            text: ' b, c, ç, d, f, g, ğ, h, j, k, l, m, n, p, r, s, ş, t, v, y, z.',
                            style: SpanSiyah.siyah,
                          ),
                        ]
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "\t\t\t\tÜnsüz harfleri, yumuşak ünsüzler ve sert ünsüz harfler olarak iki gruba ayırabiliriz. ",
                    style: SiyahRenk.siyah,
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
                      buildRow(['Yumuşak Ünsüzler', 'Sert Ünsüzler']),
                      buildRow([
                        'b, c, d, g, ğ, j, l, m, n, r, v, y, z',
                        'ç, f, h, k, p, s, ş, t',
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

TableRow buildRow(List<String> cells) => TableRow(
  children: cells
      .map((cells) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      cells,
      style: SiyahRenk.siyah,
    ),
  ))
      .toList(),
);


