import 'package:flutter/material.dart';
import '../stil_olustur/styles.dart';
import 'konular.dart';

class Deyimler extends StatelessWidget {
  const Deyimler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DeyimlerinYazimi(),
    );
  }
}
class DeyimlerinYazimi extends StatelessWidget {
  const DeyimlerinYazimi({Key? key}) : super(key: key);

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
          "Deyimlerin Yazımı",
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
              child: Text("\t\t\tDeyimler ayrı yazılır.", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Örnekler", style: MaviRenk.mavi),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("kulak vermek", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("göz atmak", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("devede kulak", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("çam devirmek", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("çantada keklik", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("göze girmek", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("boş boğaz", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("kulak asmak", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("kulağına küpe olma", style: SiyahRenk.siyah),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("akıntıya kürek çekmek", style: SiyahRenk.siyah),
            ),
          ],
        ),
      ),
    );
  }
}

