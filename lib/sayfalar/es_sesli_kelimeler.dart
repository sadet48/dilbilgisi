import 'package:flutter/material.dart';

import '../stil_olustur/styles.dart';
import 'konular.dart';

class EsSesli extends StatelessWidget {
  const EsSesli({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EsSesliKelimeler(),
    );
  }
}

class EsSesliKelimeler extends StatelessWidget {
  const EsSesliKelimeler({Key? key}) : super(key: key);

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
          "Eş Sesli Kelimeler",
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '\t\t\tYazılış ve okunuşu aynı, anlamı farklı olan kelimelere "eş sesli kelimeler" denir.',
                    style: SiyahRenk.siyah,
                  ),
                ),
                const Divider(
                  thickness: 1.0,
                  color: Color(0xffcccccc),
                  indent: 0.0,
                  endIndent: 0.0,
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Çay ',
                      style: SpanKirmizi.kirmizi,
                      children: [
                        TextSpan(
                          text: 'içtim.',
                          style: SpanSiyah.siyah,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Çay ',
                      style: SpanKirmizi.kirmizi,
                      children: [
                        TextSpan(
                          text: 'kenarında piknik yaptık.',
                          style: SpanSiyah.siyah,
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  thickness: 1.0,
                  color: Color(0xffcccccc),
                  indent: 0.0,
                  endIndent: 0.0,
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Ocak ',
                      style: SpanKirmizi.kirmizi,
                      children: [
                        TextSpan(
                          text: ' ayında doğmuşum.',
                          style: SpanSiyah.siyah,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Ocak',
                      style: SpanKirmizi.kirmizi,
                      children: [
                        TextSpan(
                          text: 'ta yemek pişiyor.',
                          style: SpanSiyah.siyah,
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  thickness: 1.0,
                  color: Color(0xffcccccc),
                  indent: 0.0,
                  endIndent: 0.0,
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Bahçemize ',
                      style: SpanSiyah.siyah,
                      children: [
                        TextSpan(
                          text: 'gül ',
                          style: SpanKirmizi.kirmizi,
                        ),
                        TextSpan(
                          text: 'diktik.',
                          style: SpanSiyah.siyah,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Arkadaşım çok ',
                      style: SpanSiyah.siyah,
                      children: [
                        TextSpan(
                          text: 'gül',
                          style: SpanKirmizi.kirmizi,
                        ),
                        TextSpan(
                          text: 'dü.',
                          style: SpanSiyah.siyah,
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  thickness: 1.0,
                  color: Color(0xffcccccc),
                  indent: 0.0,
                  endIndent: 0.0,
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Çiftlikte ',
                      style: SpanSiyah.siyah,
                      children: [
                        TextSpan(
                          text: 'at ',
                          style: SpanKirmizi.kirmizi,
                        ),
                        TextSpan(
                          text: 'yetiştiriyoruz.',
                          style: SpanSiyah.siyah,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Arkadaşım topu bana ',
                      style: SpanSiyah.siyah,
                      children: [
                        TextSpan(
                          text: 'at',
                          style: SpanKirmizi.kirmizi,
                        ),
                        TextSpan(
                          text: 'tı.',
                          style: SpanSiyah.siyah,
                        ),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  thickness: 1.0,
                  color: Color(0xffcccccc),
                  indent: 0.0,
                  endIndent: 0.0,
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Yazın denizde ',
                      style: SpanSiyah.siyah,
                      children: [
                        TextSpan(
                          text: 'yüz',
                          style: SpanKirmizi.kirmizi,
                        ),
                        TextSpan(
                          text: 'dük.',
                          style: SpanSiyah.siyah,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Kumbaramda ',
                      style: SpanSiyah.siyah,
                      children: [
                        TextSpan(
                          text: 'yüz ',
                          style: SpanKirmizi.kirmizi,
                        ),
                        TextSpan(
                          text: 'lira var.',
                          style: SpanSiyah.siyah,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                )
              ],
            ),
          )),
    );
  }
}
