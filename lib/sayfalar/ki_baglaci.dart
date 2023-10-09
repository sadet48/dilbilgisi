import 'package:flutter/material.dart';
import '../stil_olustur/styles.dart';
import 'konular.dart';
class KiBaglaci extends StatelessWidget {
  const KiBaglaci({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KiBaglaciYazimi(),
    );
  }
}
class KiBaglaciYazimi extends StatelessWidget {
  const KiBaglaciYazimi({Key? key}) : super(key: key);

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
          "Ki Bağlacı",
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
              child: Text("\t\t\tBağlaç olan ki ayrı yazılır.", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Örnekler", style: MaviRenk.mavi),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("demek ki", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("kaldı ki", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("bilmem ki", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("olur ki", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("yeter ki", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("\t\t\tKalıplaşmış olan ki ise bitişik yazılır.", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Örnekler", style: MaviRenk.mavi),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("belki", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("hâlbuki", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("sanki", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("çünkü", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("mademki", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("\t\t\tİlgi zamiri olan ki bitişik yazılır.", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Örnekler", style: MaviRenk.mavi),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("benimki", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("seninki", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("onunki", style: SiyahRenk.siyah),
            ),
          ],
        ),
      ),
    );
  }
}

