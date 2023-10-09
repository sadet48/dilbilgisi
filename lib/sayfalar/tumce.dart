import 'package:flutter/material.dart';

import '../stil_olustur/styles.dart';
import 'konular.dart';

class Tumce extends StatelessWidget {
  const Tumce({Key? key}) : super(key: key);

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
            "Tümce ( Cümle )",
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
                  "\t\t\tBir duyguyu, bir düşünceyi, bir hareketi, bir olayı tam olarak bildiren kelime veya kelime grubudur.",
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\t\t\tTürkçede tümceyi oluşturan kelimeler, özne, tümleç ve yüklem sırasına uygun yazılmalıdır. Biz bu yapıdaki cümlelere kurallı tümce (cümle) diyoruz.",
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
                child: Text(
                  "Ali kitap okudu.",
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Tümcenin Temel Ögeleri",
                  style: MaviRenk.mavi,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 8.0,bottom: 8.0, right: 8.0),
                child: Table(
                  border: TableBorder.all(color: Colors.grey),
                  defaultColumnWidth: const FixedColumnWidth(85.0),
                  children: [
                    buildRow(['Özne', 'Tümleç', 'Yüklem']),
                    buildRow2(['Ali', ' kitap', ' okudu.']),
                    buildRow2(['Zafer', ' ödevini', ' yaptı.']),
                    buildRow2(['Kedi', ' süt', ' içti.']),
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
          .map(
            (cells) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  cells,
                  style: KirmiziRenk.kirmizi,
                ),
              ),
            ),
          )
          .toList(),
    );
TableRow buildRow2(List<String> cells) => TableRow(
  children: cells
      .map(
        (cells) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          cells,
          style: SiyahRenk.siyah,
        ),
      ),
    ),
  )
      .toList(),
);
