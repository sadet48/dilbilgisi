import 'package:flutter/material.dart';
import '../stil_olustur/styles.dart';
import 'konular.dart';

class UnluDusmesi extends StatelessWidget {
  const UnluDusmesi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UnluDusmesiKurali(),
    );
  }
}
class UnluDusmesiKurali extends StatelessWidget {
  const UnluDusmesiKurali({Key? key}) : super(key: key);

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
          "Ünlü Düşmesi",
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
                child: Card(
                  color: Colors.orangeAccent[100],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '\t\tİki heceli bazı kelimeler ünlüyle başlayan bir ek aldıklarında ikinci hecelerindeki dar ünlüler düşer.',
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
                  'ağız+ı → ağzı',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'boyun+u → boynu',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'karın+ı → karnı',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'burun+u → burnu',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'beyin+i → beyni',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'akıl+ı → aklı',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'resim+i → resmi',
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

