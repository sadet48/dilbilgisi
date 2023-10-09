import 'package:flutter/material.dart';

import '../stil_olustur/styles.dart';
import 'konular.dart';

class DeDurumEki extends StatelessWidget {
  const DeDurumEki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DeDurumEkininKullanimi(),
    );
  }
}

class DeDurumEkininKullanimi extends StatelessWidget {
  const DeDurumEkininKullanimi({Key? key}) : super(key: key);

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
          "De Durum Eki",
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
                  '\t\tİsmin sonuna gelen "de" eki, bitişik olarak yazılır. Ünsüz benzeşmesine uyarak –da, -ta, -te şeklinde de kullanılır. Cümleden çıkarıldığı zaman cümlenin anlamı bozulur.',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'ev + de → evde',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Dün evde kimse yoktu.',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '\t\t\tBir cümlede hem durum eki "de" hem de "de" bağlacı peş peşe kullanılabilir. Önce durum eki kullanılır. Bağlaç olan "de" eki ise ayrı yazılır.',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RichText(
                  text: TextSpan(
                      text: 'evde → evde',
                      style: SpanSiyah.siyah,
                      children: [
                        TextSpan(
                          text: ' de',
                          style: SpanKirmizi.kirmizi,
                        ),
                      ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: RichText(
                  text: TextSpan(
                      text: 'Evde',
                      style: SpanSiyah.siyah,
                      children: [
                        TextSpan(
                          text: ' de',
                          style: SpanKirmizi.kirmizi,
                        ),
                        TextSpan(
                          text: ' kitaplık var.',
                          style: SpanSiyah.siyah,
                        ),
                      ]
                  ),
                ),
              ),
              const SizedBox(height: 50.0,)
            ],
          ),
        ),
      ),
    );
  }
}
