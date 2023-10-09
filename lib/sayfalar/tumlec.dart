import 'package:flutter/material.dart';

import '../stil_olustur/styles.dart';

class Tumlec extends StatelessWidget {
  const Tumlec({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TumlecNedir();
  }
}

class TumlecNedir extends StatefulWidget {
  const TumlecNedir({Key? key}) : super(key: key);

  @override
  State<TumlecNedir> createState() => _TumlecNedirState();
}

class _TumlecNedirState extends State<TumlecNedir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tümleç Nedir?",
          style: BeyazRenk.beyaz,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("\t\t\tTümcenin yardımcı ögelerindendir. Yüklemin tümce içindeki anlamını pekiştirir. Eylemin nerede, ne zaman, kiminle ve ne için yapıldığını bildirir.",
                  style: SiyahRenk.siyah,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("\t\t\tTümlecleri bulmak için yükleme sorular sorulur.",
                  style: SiyahRenk.siyah,),
              ),
            ],
          ),
      ),
    );
  }
}
