import 'package:flutter/material.dart';
import '../stil_olustur/styles.dart';
import 'konular.dart';

class Unlem extends StatelessWidget {
  const Unlem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UnlemIsareti(),
    );
  }
}

class UnlemIsareti extends StatelessWidget {
  const UnlemIsareti({Key? key}) : super(key: key);

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
          "Ünlem İşareti",
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
                      style: SpanKirmizi.kirmizi,
                      children: [
                        TextSpan(
                          text: '\tBir sevinç, haykırış, coşku, üzüntü, acı, korku, hayret, heyecan, öfke vb. ünlem belirten, seslenme, hitap ve uyarı bildiren ifadelerin sonuna konur.',
                          style: SpanSiyah.siyah,
                        ),
                      ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Yaşasın! Babam gelmiş.",
                  style: SiyahRenk.siyah,
                ),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                      text: '2.',
                      style: SpanKirmizi.kirmizi,
                      children: [
                        TextSpan(
                          text: '\tSeslenme, hitap ve uyarı sözlerinden sonra konur.',
                          style: SpanSiyah.siyah,
                        ),
                      ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Ordular! İlk hedefiniz Akdeniz’dir, ileri!",
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                      text: '3.',
                      style: SpanKirmizi.kirmizi,
                      children: [
                        TextSpan(
                          text: '\tKendisinden önce gelen söze alay, kinaye, ironi, küçümseme gibi anlamlar katmak için ünlem işaretin parantez içine konularak (!) kullanılır.',
                          style: SpanSiyah.siyah,
                        ),
                      ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Çok para kazanacakmış (!) da annesini kurtaracakmış.",
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                      text: '4.',
                      style: SpanKirmizi.kirmizi,
                      children: [
                        TextSpan(
                          text: '\tKendi başına bir cümle değerinde olup konuşanın duygularını canlı ve kısa bir şekilde anlatmağa yarayan kelime.',
                          style: SpanSiyah.siyah,
                        ),
                      ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Oh!\nAh!\nEyvah!\n gibi.",
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                      text: '5.',
                      style: SpanKirmizi.kirmizi,
                      children: [
                        TextSpan(
                          text: '\tBir duyguyu, bir düşünceyi anlatan veya bir tabiat sesini yansıtan sözcük.',
                          style: SpanSiyah.siyah,
                        ),
                      ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Ah!,\nOh!,\nVah vah!,\nTangur tungur!,\nMırıl mırıl!,\nŞakır fakır!\n gibi.",
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                      text: '6.',
                      style: SpanKirmizi.kirmizi,
                      children: [
                        TextSpan(
                          text: '\tBirden uyanan gür coşkuların etkisiyle ağızdan çıkıveren sözcükler, söz öbekleri.',
                          style: SpanSiyah.siyah,
                        ),
                      ]
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Ey bu topraklar için toprağa düşmüş asker!\nEyvah melek de mahvolmuş!",
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
