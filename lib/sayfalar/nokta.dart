import 'package:flutter/material.dart';

import '../stil_olustur/styles.dart';
import 'konular.dart';
class NoktaIsareti extends StatelessWidget {
  const NoktaIsareti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Nokta(),
    );
  }
}
class Nokta extends StatefulWidget {
  const Nokta({Key? key}) : super(key: key);

  @override
  State<Nokta> createState() => _NoktaState();
}

class _NoktaState extends State<Nokta> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Konular()));
          },
          child: const Icon(Icons.arrow_back),
        ),
        title: Text(
          "Nokta",
          style: AppBarYazi.appbarYazi,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Card(
                color: Colors.amber.shade200,
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '1. Bitmiş cümlelerin sonuna konur.',
                    style: SiyahRenk.siyah,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Bugün hava çok güzel.',
                  style: SiyahRenk.siyah,
                ),
              ),
              Card(
                color: Colors.amber.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '2. Kısaltmalarda kullanılır.',
                    style: SiyahRenk.siyah,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Dr.',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Prof.',
                  style: SiyahRenk.siyah,
                ),
              ),
              Card(
                color: Colors.amber .shade200,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '3. Sayılardan sonra sıralama amacıyla kullanılır.',
                    style: SiyahRenk.siyah,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '1.',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '2.',
                  style: SiyahRenk.siyah,
                ),
              ),
              Card(
                color: Colors.amber.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '4. Tarih yazımında kullanılır.',
                    style: SiyahRenk.siyah,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '19.05.1919',
                  style: SiyahRenk.siyah,
                ),
              ),
              Card(
                color: Colors.amber.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '5. Saat, dakika ve saniye yazımında kullanılır.',
                    style: SiyahRenk.siyah,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '08.30.15',
                  style: SiyahRenk.siyah,
                ),
              ),
              Card(
                color: Colors.amber.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '6. Matematikte çarpma işareti (x) yerine kullanılır.',
                    style: SiyahRenk.siyah,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '3.2 = 6',
                  style: SiyahRenk.siyah,
                ),
              ),
              Card(
                color: Colors.amber.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '7. Bir yazının maddelerini gösteren rakam veya harflerden sonra konur.',
                    style: SiyahRenk.siyah,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'I.',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'II.',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'a.',
                  style: SiyahRenk.siyah,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'b.',
                  style: SiyahRenk.siyah,
                ),
              ),
              Card(
                color: Colors.amber.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '8. İnternet adreslerinin yazımında kullanılır.',
                    style: SiyahRenk.siyah,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'https://www.google.com/',
                  style: SiyahRenk.siyah,
                ),
              ),
              Card(
                color: Colors.amber.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '9. Kitap, dergi vb.nin künyelerinin sonuna konur.',
                    style: SiyahRenk.siyah,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Sadet Sevinç, Web Dersleri, Sevinç Yayınları, Muğla, 2018.',
                  style: SiyahRenk.siyah,
                ),
              ),

              Card(
                color: Colors.amber.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '10. Dört ve dörtten çok rakamlı sayılar sondan sayılmak üzere üçlü gruplara ayrılarak yazılır ve araya nokta konur.',
                    style: SiyahRenk.siyah,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '1.000, 15.500, 25.750.300 gibi',
                  style: SiyahRenk.siyah,
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

