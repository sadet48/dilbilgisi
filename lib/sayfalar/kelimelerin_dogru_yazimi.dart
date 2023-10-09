import 'package:flutter/material.dart';

import '../stil_olustur/styles.dart';
import 'konular.dart';

class KelimelerinDogruYazimi extends StatelessWidget {
  const KelimelerinDogruYazimi({Key? key}) : super(key: key);

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
            "Kelimelerin Doğru Yazımı",
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
                    "\t\t\tDilimizde bazı kelimelerin yazımında hatalar olabilmektedir. Kelimelerin doğru yazımını yazım kılavuzundan öğrenebiliriz.",
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
                      buildRow2(['Yanlış', 'Doğru']),
                      buildRow(['yanlız', 'yalnız',]),
                      buildRow(['herkez', 'herkes',]),
                      buildRow(['poaça', 'poğaça',]),
                      buildRow(['sıpor', 'spor',]),
                      buildRow(['kıral', 'kral',]),
                      buildRow(['pirenses', 'prenses',]),
                      buildRow(['pisikoloji', 'psikoloji',]),
                      buildRow(['tiren', 'tren',]),
                      buildRow(['birgün', 'bir gün',]),
                      buildRow(['birşey', 'bir şey',]),
                      buildRow(['benim ki', 'benimki',]),
                      buildRow(['senin ki', 'seninki',]),
                      buildRow(['onun ki', 'onunki',]),
                      buildRow(['bir çok', 'birçok',]),
                      buildRow(['bu gün', 'bugün',]),
                      buildRow(['kıronoloji', 'kronoloji',]),
                    ],
                  ),
                ),
              ],
            ),
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
      style: SiyahRenk.siyah,
    ),
  ))
      .toList(),
);
TableRow buildRow2(List<String> cells) => TableRow(
  children: cells
      .map((cells) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      cells,
      style: KirmiziRenk.kirmizi,
    ),
  ))
      .toList(),
);
