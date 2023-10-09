import 'package:flutter/material.dart';
import '../stil_olustur/styles.dart';
import 'konular.dart';

class SertUnsuzlerinYumusamasi extends StatelessWidget {
  const SertUnsuzlerinYumusamasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SertUnsuzlerinYumusamasiKurali(),
    );
  }
}

class SertUnsuzlerinYumusamasiKurali extends StatelessWidget {
  const SertUnsuzlerinYumusamasiKurali({Key? key}) : super(key: key);

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
          "Sert Ünsüzlerin Yumuşaması",
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
                  '\t\tTürkçe isimlerin sonunda p, ç, t, k ünsüzleri varsa bu isimlere sesli harfle başlayan çekim ya da yapım eki gelirse bu harfler yumuşar.',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'p => b',
                  style: KirmiziRenk.kirmizi,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'kitap+ı => kitabı',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'ç => c',
                  style: KirmiziRenk.kirmizi,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'ağaç+ı => ağacı',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  't => d',
                  style: KirmiziRenk.kirmizi,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'kanat+ı => kanadı',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'k => ğ',
                  style: KirmiziRenk.kirmizi,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'kapak+ı => kapağı',
                  style: SiyahRenk.siyah
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
