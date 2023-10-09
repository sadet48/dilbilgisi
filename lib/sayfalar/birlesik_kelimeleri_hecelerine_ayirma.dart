import 'package:flutter/material.dart';

import '../stil_olustur/styles.dart';
import 'konular.dart';

class BirlesikKelimeleriHecelerineAyirma extends StatelessWidget {
  const BirlesikKelimeleriHecelerineAyirma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var myStyle = const TextStyle(
      fontSize: 20,
      color: Colors.black87,
      fontFamily: 'TTKB Dik Temel Abece',
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Konular()));
            },
            child: const Icon(Icons.arrow_back),
          ),
          title: Text(
            "Birleşik Kelimeleri Hecelerine Ayırma",
            style: AppBarYazi.appbarYazi,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "\t\t\tBirleşik kelimelerin hecelere ayrılmasında ulama kuralına uyarız. Yani; \"sessiz harf ile biten bir kelimeden sonra, sesli harf ile başlayan bir kelime gelirse, bu iki kelime bitişikmiş gibi okunur.\" Hecelere ayırmada ise, böyle iki kelime birleşmiş olduğu için sessiz harften sonra gelen sesli harfler, sessiz harfe ile birleştirilerek hecelerine ayrılır.",
                      style: myStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "yayınevi = ya-yı-ne-vi",
                      style: myStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "semizotu = se-mi-zo-tu",
                      style: myStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "hanımeli = ha-nı-me-li",
                      style: myStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "akşamüstü = ak-şa-müs-tü",
                      style: myStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "ba-şöğ-ret-men",
                      style: myStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "il-ko-kul",
                      style: myStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "il-köğ-re-tim",
                      style: myStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Ka-ra-os-ma-noğ-lu",
                      style: myStyle,
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
