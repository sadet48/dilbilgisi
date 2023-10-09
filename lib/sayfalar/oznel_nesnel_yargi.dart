import 'package:flutter/material.dart';
import '../stil_olustur/styles.dart';
import 'konular.dart';

class OznelNesnelYargi extends StatelessWidget {
  const OznelNesnelYargi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OznelNesnelYargiliCumleler(),
    );
  }
}
class OznelNesnelYargiliCumleler extends StatelessWidget {
  const OznelNesnelYargiliCumleler({Key? key}) : super(key: key);

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
          "Öznel ve Nesnel Yargı",
          style: AppBarYazi.appbarYazi,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '\t\tCümleler, yansıttığı düşüncelerin özelliklerine göre öznel ve nesnel olmak üzere ikiye ayrılırlar.',
                    style: SiyahRenk.siyah,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Öznel Yargı',
                      style: KirmiziRenk.kirmizi,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '\t\tSöyleyenin kendi düşüncesini, duygusunu veya beğenisini içeren cümlelerdir. Kişiden kişiye değişebilen yargılardır.',
                    style: SiyahRenk.siyah,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Yaz en güzel mevsimdir.',
                    style: SiyahRenk.siyah,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Çok iyi bir insandır.',
                    style: SiyahRenk.siyah,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Türkiye’nin en güzel şehri Muğla’dır.',
                    style: SiyahRenk.siyah,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Nesnel Yargı',
                      style: KirmiziRenk.kirmizi,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '\t\tSöyleyenin duygu veya düşüncesini içermeyen; doğruluğu ya da yanlışlığı kişiden kişiye göre değişiklik göstermeyen cümlelerdir. Nesnel yargılar, araştırma sonucu ulaşılabilecek, herkesçe kabul görmüş, kanıtlanabilir yargılardır.',
                    style: SiyahRenk.siyah,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Türkiye’nin başkenti Ankara’dır.',
                    style: SiyahRenk.siyah,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Alfabemizde 29 harf vardır.',
                    style: SiyahRenk.siyah,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Arılar bal yapar.',
                    style: SiyahRenk.siyah,
                  ),
                ),
                const SizedBox(height: 50.0,),
              ],
            ),
          )
      ),
    );
  }
}

