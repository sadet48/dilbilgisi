import 'package:flutter/material.dart';
import 'package:turkce_dilbilgisi/stil_olustur/styles.dart';

import 'konular.dart';

class AnlamBakimindanKelimeler extends StatelessWidget {
  const AnlamBakimindanKelimeler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnlamBakimindan(),
    );
  }
}

class AnlamBakimindan extends StatelessWidget {
  const AnlamBakimindan({Key? key}) : super(key: key);
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
          "Anlam Bakımından Kelimeler",
          style: AppBarYazi.appbarYazi,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Divider(
                thickness: 1.0,
                color: Color(0xffcccccc),
                indent: 0.0,
                endIndent: 0.0,
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.green[200],
                  elevation: 10.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "\t\t\tKelimeler kendi başlarına anlamlı olmakla birlikte cümle içinde farklı anlam kazanabilir.",
                      style: SiyahRenk.siyah,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: '1. ',
                    style: KirmiziRenk.kirmizi,
                    children: [
                      TextSpan(
                        text: 'Gerçek Anlam',
                        style: MaviRenk.mavi,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.blue[200],
                  elevation: 10.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "\t\tBir kelimenin aklımıza ilk gelen anlamına gerçek anlam denir.",
                      style: SiyahRenk.siyah,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: 'Boş',
                    style: KirmiziRenk.kirmizi,
                    children: [
                      TextSpan(
                        text: ' bir şişeye koydum.',
                        style: SiyahRenk.siyah,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: '2. ',
                    style: KirmiziRenk.kirmizi,
                    children: [
                      TextSpan(
                        text: 'Mecaz Anlam',
                        style: MaviRenk.mavi,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.red[200],
                  elevation: 10.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "\t\tBir kelimenin gerçek anlamından tamamen uzaklaşarak kazandığı yeni anlamına mecaz anlam denir.",
                      style: SiyahRenk.siyah,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: 'Maça gidemeyince biletlerimiz ',
                    style: SiyahRenk.siyah,
                    children: [
                      TextSpan(
                        text: 'yandı.',
                        style: KirmiziRenk.kirmizi,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: '3. ',
                    style: KirmiziRenk.kirmizi,
                    children: [
                      TextSpan(
                        text: 'Terim Anlam',
                        style: MaviRenk.mavi,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.purple[200],
                  elevation: 10.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '\t\tBir kelimenin bilim, sanat, spor ya da meslek alanına özgü kavramları karşılığında kazandığı anlama "terim anlam" adı verilir.',
                      style: SiyahRenk.siyah,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: 'Derste ',
                    style: SiyahRenk.siyah,
                    children: [
                      TextSpan(
                        text: 'ışık',
                        style: KirmiziRenk.kirmizi,
                      ),
                      TextSpan(
                        text: ' konusunu işleyeceğiz.',
                        style: SiyahRenk.siyah,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: '4. ',
                    style: KirmiziRenk.kirmizi,
                    children: [
                      TextSpan(
                        text: 'Deyim Anlam',
                        style: MaviRenk.mavi,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.orange[200],
                  elevation: 10.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "\t\tDeyim, en az iki kelimenin kalıplaşarak yeni bir anlam kazanmasıyla oluşan mecazlı sözlerdir.",
                      style: SiyahRenk.siyah,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: 'Göze girmek ',
                    style: KirmiziRenk.kirmizi,
                    children: [
                      TextSpan(
                        text: 'için her şeyi yapıyor.',
                        style: SiyahRenk.siyah,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: '5. ',
                    style: KirmiziRenk.kirmizi,
                    children: [
                      TextSpan(
                        text: 'Argo Anlam',
                        style: MaviRenk.mavi,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  color: Colors.pink[200],
                  elevation: 10.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "\t\tSadece belli bir topluluk ya da meslek tarafından kullanılan özel sözcüklerden oluşan dile argo denir.",
                      style: SiyahRenk.siyah,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: 'O ne ',
                    style: SiyahRenk.siyah,
                    children: [
                      TextSpan(
                        text: 'çakal',
                        style: KirmiziRenk.kirmizi,
                      ),
                      TextSpan(
                        text: 'dır.',
                        style: SiyahRenk.siyah,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
