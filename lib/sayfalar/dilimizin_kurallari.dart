import 'package:flutter/material.dart';

import '../stil_olustur/styles.dart';
import 'konular.dart';

class DilimizinKurallari extends StatelessWidget {
  const DilimizinKurallari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DilimizinKurallariNeler(),
    );
  }
}
class DilimizinKurallariNeler extends StatelessWidget {
  const DilimizinKurallariNeler({Key? key}) : super(key: key);

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
          "Dilimizin Kuralları",
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
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                        text: '1.',
                        style: KirmiziRenk.kirmizi,
                        children: [
                          TextSpan(
                            text: ' Türkçede sözcüklerin ilk ve son iki harfi ünlü olamaz.',
                            style: SiyahRenk.siyah,
                          ),
                        ]
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                        text: '2.',
                        style: KirmiziRenk.kirmizi,
                        children: [
                          TextSpan(
                            text: ' Sözcük içinde iki ünlü yanyana bulunamaz.',
                            style: SiyahRenk.siyah,
                          ),
                        ]
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                        text: '3.',
                        style: KirmiziRenk.kirmizi,
                        children: [
                          TextSpan(
                            text: ' Sözcükler b, c, d, g ünsüzleriyle bitmez.',
                            style: SiyahRenk.siyah,
                          ),
                        ]
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text:TextSpan(
                        text: '4.',
                        style: KirmiziRenk.kirmizi,
                        children: [
                          TextSpan(
                            text: ' Sözcükler büyük ya da küçük ünlü uyumuna uymalıdır.',
                            style: SiyahRenk.siyah,
                          ),
                        ]
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text:TextSpan(
                        text: '5.',
                        style: KirmiziRenk.kirmizi,
                        children: [
                          TextSpan(
                            text: ' Başka dillerden geçen kelimelerde ünlü uyumu aranmaz..',
                            style: SiyahRenk.siyah,
                          ),
                        ]
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text:TextSpan(
                        text: '6.',
                        style: KirmiziRenk.kirmizi,
                        children: [
                          TextSpan(
                            text: ' Sözcüklerin son hecesinde o ve ö ünlüleri bulunmaz.',
                            style: SiyahRenk.siyah,
                          ),
                        ]
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text:TextSpan(
                        text: '7.',
                        style: KirmiziRenk.kirmizi,
                        children: [
                          TextSpan(
                            text: ' Cümle yapısı özne, tümleç ve yüklem biçimindedir.',
                            style: SiyahRenk.siyah,
                          ),
                        ]
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text:TextSpan(
                        text: '8.',
                        style: KirmiziRenk.kirmizi,
                        children: [
                          TextSpan(
                            text: ' Türkçe sözcükler yapım eki alarak farklı anlamda sözcükler oluşturabilirler.',
                            style: SiyahRenk.siyah,
                          ),
                        ]
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}

