import 'package:flutter/material.dart';
import '../stil_olustur/styles.dart';
import 'konular.dart';

class UnluUyumlari extends StatelessWidget {
  const UnluUyumlari({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UnluUyumuKurali(),
    );
  }
}

class UnluUyumuKurali extends StatelessWidget {
  const UnluUyumuKurali({Key? key}) : super(key: key);
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
          "Ünlü Uyumları",
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
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 0.0),
                color: Colors.orange.shade200,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Büyük Ünlü Uyumu',
                    style: KirmiziRenk.kirmizi,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Bir kelimenin birinci hecesinde kalın bir ünlü (a, ı, o, u) bulunuyorsa diğer hecelerdeki ünlüler de kalın, ince bir ünlü (e, i, ö, ü) bulunuyorsa diğer hecelerdeki ünlüler de ince olur. Buna büyük ünlü uyumu denir.',
                  style: MaviRenk.mavi,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'toprak',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'balık',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'ayak',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'kelebek',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'pencere',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'tavuk',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'leylek',
                  style: SiyahRenk.siyah,
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.orange.shade200,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Küçük Ünlü Uyumu',
                    style: KirmiziRenk.kirmizi,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Bir kelimede düz ünlüden sonra düz (a, e, ı, i), yuvarlak ünlüden sonra yuvarlak dar (u, ü) veya düz geniş (a, e) ünlüler bulunur. Buna küçük ünlü uyumu denir.',
                  style: MaviRenk.mavi,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "çilek",
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "çocuk",
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "odun",
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "yumurta",
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "özlemek",
                  style: SiyahRenk.siyah,
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
