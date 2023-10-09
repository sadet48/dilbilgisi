import 'package:flutter/material.dart';
import '../stil_olustur/styles.dart';
import 'konular.dart';

class Virgul extends StatelessWidget {
  const Virgul({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VirgulKullanma(),
    );
  }
}

class VirgulKullanma extends StatelessWidget {
  const VirgulKullanma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Konular()));
            },
            child: const Icon(Icons.arrow_back),
          ),
          title: Text(
            "Virgül İşareti",
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
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Cümlede aynı görevdeki kelimelerin arasına konur.",
                    style: MaviRenk.mavi,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Manavdan elma, armut ve üzüm aldım.",
                    style: SiyahRenk.siyah,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Sıralı cümleleri birbirinden ayırmak için kullanılır.",
                    style: MaviRenk.mavi,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Ne umduk, ne bulduk ?",
                    style: SiyahRenk.siyah,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Uzun cümlelerde yüklemden uzak düşmüş olan özneyi belirtmek için konur.",
                    style: MaviRenk.mavi,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Yabancı adam, çevresine şaşkınlık içerisinde bir göz attı.",
                    style: SiyahRenk.siyah,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Hitap için kullanılan kelimelerden sonra konur.",
                    style: MaviRenk.mavi,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Efendiler,",
                    style: SiyahRenk.siyah,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Yazışmalarda mekan isimlerini, muhit isimlerini tarihten ayırmak için kullanılır.",
                    style: MaviRenk.mavi,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Bodrum, 2018.",
                    style: SiyahRenk.siyah,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Künyelerde yazar, eser, tarih, basımevi ve yeri ayrımında kullanılır.",
                    style: MaviRenk.mavi,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Sadet Sevinç,Web Dersleri, Muğla,2018.",
                    style: SiyahRenk.siyah,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Tekrarlanan kelimelerden sonra kullanılır.",
                    style: MaviRenk.mavi,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Akşam, yine akşam.",
                    style: SiyahRenk.siyah,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Cümle içinde vurgu yapmak için kullanılır.",
                    style: MaviRenk.mavi,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Böylece, her istediğini elde etti.",
                    style: SiyahRenk.siyah,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Anlam pekiştirmesinin olması gerektiği yerlerde kullanılır.",
                    style: MaviRenk.mavi,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Evet, şimdi oldu.",
                    style: SiyahRenk.siyah,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Bir düşünceyi kabul ya da ret ifadesinden sonra kullanılır.",
                    style: MaviRenk.mavi,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Hayır, kabul edemem.",
                    style: SiyahRenk.siyah,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Tırnak içine alınmamış alıntı cümlelerinden ve konuşma çizgisinden sonraki alıntı cümlelerinden sonra virgül konulur.",
                    style: MaviRenk.mavi,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "- Gelmiyorum, dedi ve gitti.",
                    style: SiyahRenk.siyah,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Sayıların ondalık kısımlarını belirtmek için virgül kullanılır.",
                    style: MaviRenk.mavi,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "2,5",
                    style: SiyahRenk.siyah,
                  ),
                ),
                const SizedBox(height: 50.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
