import 'package:flutter/material.dart';
import 'package:turkce_dilbilgisi/stil_olustur/styles.dart';

import 'konular.dart';

class BirlesikKelime extends StatelessWidget {
  const BirlesikKelime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BirlesikKelimeler(),
    );
  }
}
class BirlesikKelimeler extends StatelessWidget {
  const BirlesikKelimeler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>const Konular()));
          },
          child: const Icon(Icons.arrow_back),
        ),
        title: Text(
          "Birleşik Kelimeler",
          style: AppBarYazi.appbarYazi,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                thickness: 1.0,
                color: Color(0xffcccccc),
                indent: 0.0,
                endIndent: 0.0,
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  color: Colors.blue[50],
                  elevation: 10.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '\t\tİki kelimenin, yeni bir kavramı karşılamak için birleşmesiyle oluşan kelimelerdir. Kelime yapma yollarından biridir.',
                      style: SiyahRenk.siyah,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Örnekler',
                  style: MaviRenk.mavi,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'ilk + okul → ilkokul',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'sivri + sinek → sivrisinek',
                  style:SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'kuş + burnu → kuşburnu',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'kuş + bakışı → kuşbakışı',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'aslan + ağzı → aslanağzı',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'gece + kondu → gecekondu',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'deniz + atı → denizatı',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'ilk + bahar → ilkbahar',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'son + bahar → sonbahar',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'eski + şehir → Eskişehir',
                  style: SiyahRenk.siyah,
                ),
              ),
              const SizedBox(height: 50.0,),
            ],
          ),
        ),
      ),
    );
  }
}