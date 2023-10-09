import 'package:flutter/material.dart';
import '../stil_olustur/styles.dart';
import 'konular.dart';

class NedenSonuc extends StatelessWidget {
  const NedenSonuc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Neden, Sonuç Tümleleri',
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
            "Neden, Sonuç Tümceleri",
            style: AppBarYazi.appbarYazi,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\t\t\tNeden-sonuç cümleleri iki bölümden oluşur. Birinci bölüm neden (sebep), ikinci bölüm ise sonuç bildirir.\n\t\t\tBu tür sorularda eylemin hangi nedenle maydana geldiği bizim için önemlidir. Daha çok için, -den, -diğinden, ile gibi edatlarla sağlanır.",
                  style: SiyahRenk.siyah,
                ),
              ),
              Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFFF0000),
                        Color(0xFFFF5000),
                        Color(0xFFFF8000),
                      ],
                    ),
                  ),
                  margin: const EdgeInsets.all(10.0),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, top: 15.0, right: 15.0, bottom: 10.0),
                    child: Text(
                      "Örnekler",
                      style: BeyazRenk.beyaz,
                    ),
                  )),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.all(10.0),
                color: Colors.amber.shade100,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Seni ziyaret edemedim, çünkü hastaydım.",
                    style: SiyahRenk.siyah,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.all(10.0),
                color: Colors.red.shade100,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Yoğun yağmur nedeni ile maç ertelendi.",
                    style: SiyahRenk.siyah,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.all(10.0),
                color: Colors.green.shade100,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Kalemi olmadığından yazamadı.",
                    style: SiyahRenk.siyah,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.all(10.0),
                color: Colors.purple.shade100,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Geç kaldığı için sınava alınmadı.",
                    style: SiyahRenk.siyah,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.all(10.0),
                color: Colors.blue.shade100,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Hava çok soğuk olduğu için dışarı çıkamadık.",
                    style: SiyahRenk.siyah,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
