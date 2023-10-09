import 'package:flutter/material.dart';
import 'package:turkce_dilbilgisi/renk_olustur/renkler.dart';
import 'package:turkce_dilbilgisi/sayfalar/baglaclar.dart';
import 'package:turkce_dilbilgisi/sayfalar/tumce.dart';
import 'package:turkce_dilbilgisi/sayfalar/neden_sonuc.dart';
import 'package:turkce_dilbilgisi/sayfalar/tumlec.dart';
import 'package:turkce_dilbilgisi/sayfalar/yapim_eki.dart';
import 'package:turkce_dilbilgisi/sayfalar/zamirler.dart';
import 'package:flutter_animate/flutter_animate.dart';

import 'deyimler.dart';
import 'diger_icerikler.dart';
import 'durum_ekleri.dart';
import 'ekler.dart';
import 'ki_baglaci.dart';
import 'sifatlar.dart';
import 'yuklem.dart';
import 'nokta.dart';
import 'birlesik_kelimeleri_hecelerine_ayirma.dart';
import 'unlu_uyumlari.dart';
import 'sert_sessizlerin_yumusamasi.dart';
import 'soru_isareti.dart';
import 'unlem.dart';
import 'unlu_dusmesi.dart';
import 'unlu_harfler.dart';
import 'unsuz_harfler.dart';
import 'virgul.dart';
import 'zit_anlamli_kelimeler.dart';
import 'anlam_bakimindan_kelimeler.dart';
import 'birlesik_kelimeler.dart';
import 'de_baglaci.dart';
import 'de_durum_eki.dart';
import 'dilimizin_kurallari.dart';
import 'es_anlamli_kelimeler.dart';
import 'es_sesli_kelimeler.dart';
import 'kelimelerin_dogru_yazimi.dart';
import 'olumlu_olumsuz_cumleler.dart';
import 'oznel_nesnel_yargi.dart';

class Konular extends StatefulWidget {
  const Konular({Key? key}) : super(key: key);

  @override
  State<Konular> createState() => _KonularState();
}

class _KonularState extends State<Konular> {
  @override
  Widget build(BuildContext context) {
    List<String> sayfalar = [
      "Anlam Bakımından Kelimeler",
      "Bağlaçlar",
      "Birleşik Kelimeler",
      "Birleşik Kelimeleri Hecelerine Ayırma",
      "De Bağlacı",
      "De Durum Eki",
      "Deyimler",
      "Dilimizin Kuralları",
      "Durum Ekleri",
      "Ekler",
      "Eş Anlamlı Kelimeler",
      "Eş Sesli Kelimeler",
      "Kelimelerin Doğru Yazımı",
      "Ki Bağlacı",
      "Nokta İşareti",
      "Olumlu - Olumsuz Cümle",
      "Öznel - Nesnel Yargı",
      "Sert Ünsüzlerin Yumuşaması",
      "Sıfatlar",
      "Soru İşareti",
      "Tümce",
      "Tümleç",
      "Neden Sonuç Tümceleri",
      "Ünlem İşareti",
      "Ünlü Düşmesi",
      "Ünlü Harfler",
      "Ünsüz Harfler",
      "Ünlü Uyumları",
      "Virgül İşareti",
      "Yapım Eki",
      "Yüklem",
      "Zamirler",
      "Zıt Anlamlı Kelimeler",
      "Diğer İçerikler",
    ];
    List sayfaLinkleri = [
      const AnlamBakimindanKelimeler(),
      const Baglaclar(),
      const BirlesikKelime(),
      const BirlesikKelimeleriHecelerineAyirma(),
      const DeBaglaci(),
      const DeDurumEki(),
      const Deyimler(),
      const DilimizinKurallari(),
      const DurumEkleri(),
      const Ekler(),
      const EsAnlam(),
      const EsSesli(),
      const KelimelerinDogruYazimi(),
      const KiBaglaci(),
      const NoktaIsareti(),
      const OlumluOlumsuzCumleler(),
      const OznelNesnelYargi(),
      const SertUnsuzlerinYumusamasi(),
      const Sifatlar(),
      const SoruIsareti(),
      const Tumce(),
      const Tumlec(),
      const NedenSonuc(),
      const Unlem(),
      const UnluDusmesi(),
      const UnluHarfler(),
      const UnsuzHarfler(),
      const UnluUyumlari(),
      const Virgul(),
      const YapimEkleri(),
      const Yuklem(),
      const Zamirler(),
      const ZitAnlam(),
      const DigerIcerikler(),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              expandedHeight: 240.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Container(
                  margin: const EdgeInsets.only(top: 10.0),
                  child: const Text(
                    "KONULAR",
                    style: TextStyle(
                        color: Renkler.beyaz,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3.0,
                        fontFamily: 'TTKB Dik Temel Abece'),
                  ).animate().fadeIn(delay: const Duration(milliseconds: 1000)),
                ),
                centerTitle: true,
                background: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.cover,
                ),
              ),
              floating: true,
              snap: true,
              pinned: true,
            ),
          ],
          body: ListView.builder(
            itemCount: sayfalar.length,
            itemBuilder: (context, index) => ListTile(
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => sayfaLinkleri[index]))
              },
              leading: const Icon(
                Icons.file_copy,
                size: 25,
                color: Colors.blue,
              ),
              title: Text(
                sayfalar[index],
                style: const TextStyle(
                    fontSize: 20.0, fontFamily: 'TTKB Dik Temel Abece'),
              ),
              trailing: const Icon(
                Icons.arrow_forward,
                size: 25.0,
                color: Renkler.lavantaLight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
