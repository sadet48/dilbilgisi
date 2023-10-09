import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import '../stil_olustur/styles.dart';
import 'konular.dart';

class EsAnlam extends StatelessWidget {
  const EsAnlam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EsAnlamliKelimeler(),
    );
  }
}

class EsAnlamliKelimeler extends StatelessWidget {
  const EsAnlamliKelimeler({Key? key}) : super(key: key);

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
          "Eş Anlamlı Kelimeler",
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
                const SizedBox(height: 10.0,),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '\t\t\tYazılışı farklı olmasına rağmen, anlamı aynı olan kelimelere "eş anlamlı kelime" denir.',
                          style: SiyahRenk.siyah,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '\t\t\tEş anlamlı kelimeler cümlenin anlamında bir değişiklik oluşturmaz.',
                          style: SiyahRenk.siyah,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 4,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "kelime",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.pink.shade100,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "sözcük",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 4,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade200,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "beyaz",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.pink.shade200,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "ak",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 4,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade300,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "doktor",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.pink.shade300,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "hekim",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 4,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade400,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "okul",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.pink.shade400,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "mektep",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 4,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade500,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "kalp",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.pink.shade500,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "yürek",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 4,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade600,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "ev",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.pink.shade600,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "konut",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 4,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade700,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "siyah",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.pink.shade700,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "kara",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 4,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade800,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "sonbahar",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.pink.shade800,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "güz",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 4,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade900,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "hikâye",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.pink.shade900,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "öykü",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 4,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "deniz",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.pink.shade100,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "derya",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 4,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade200,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "savaş",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 200.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.pink.shade200,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "harp",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50.0,),
              ],
            ),
          )),
    );
  }
}
