import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import '../stil_olustur/styles.dart';
import 'konular.dart';

class ZitAnlam extends StatelessWidget {
  const ZitAnlam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ZitAnlamliKelimeler(),
    );
  }
}

class ZitAnlamliKelimeler extends StatelessWidget {
  const ZitAnlamliKelimeler({Key? key}) : super(key: key);

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
          "Zıt Anlamlı Kelimeler",
          style: AppBarYazi.appbarYazi,
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          '\t\tAnlamca birbirinin karşıtı olan, birbiriyle çelişen kelimelere "zıt anlamlı kelimeler" denir.',
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
                      flex: 2,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.amber.shade100,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "ön",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.green.shade100,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "arka",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.amber.shade200,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "ince",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.green.shade200,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "kalın",
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
                      flex: 2,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.amber.shade300,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "uzun",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.green.shade300,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "kısa",
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
                      flex: 2,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.amber.shade400,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "ucuz",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.green.shade400,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "pahalı",
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
                      flex: 2,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.amber.shade600,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "soğuk",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.green.shade600,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "sıcak",
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
                      flex: 2,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.amber.shade700,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "temiz",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.green.shade700,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "kirli",
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
                      flex: 2,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.amber.shade800,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "ileri",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.green.shade800,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "geri",
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
                      flex: 2,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.amber.shade900,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "yumuşak",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.green.shade900,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "sert",
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
                      flex: 2,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.amber.shade100,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "ilk",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.green.shade100,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "son",
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
                      flex: 2,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.amber.shade200,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "usta",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.green.shade200,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "acemi",
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
                      flex: 2,
                      child: FlipCard(
                        direction: FlipDirection.HORIZONTAL,
                        speed: 500,
                        onFlip: () {
                          // print("Flip Card");
                        },
                        front: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.amber.shade300,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "hızlı",
                              style: bSiyahRenk.siyah,
                            ),
                          ),
                        ),
                        back: Container(
                          width: 300.0,
                          padding: const EdgeInsets.all(15.0),
                          margin: const EdgeInsets.all(15.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.green.shade300,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "yavaş",
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
