import 'package:flutter/material.dart';

import '../stil_olustur/styles.dart';
import 'konular.dart';

class OlumluOlumsuzCumleler extends StatelessWidget {
  const OlumluOlumsuzCumleler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Olumlu(),
    );
  }
}
class Olumlu extends StatelessWidget {
  const Olumlu({Key? key}) : super(key: key);

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
          "Olumlu - Olumsuz Cümle",
          style: AppBarYazi.appbarYazi,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Olumlu Cümle',
                    style: KirmiziRenk.kirmizi,
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
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '\t\tOlumlu cümle, fiil cümlesinde işin, oluşun yapıldığını veya oldunu; isim cümlelerinde ise kavramın bulunduğunu, var olduğunu veya bahsedilen şekilde olduğu bildirir.',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Evim var.',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Eve gittim.',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Olumsuz Cümle',
                    style: KirmiziRenk.kirmizi,
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
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '\t\tFiil cümlelerinde eylemin, gerçekleşmediğini ya da gerçekleşmeyeceğini, işin olmadığını, olamayacağını; isim cümleleride ise bahsedilen durumun var olmadığını ya da olamayacağını belirtir.',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Evim yok.',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Eve gitmedim.',
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



