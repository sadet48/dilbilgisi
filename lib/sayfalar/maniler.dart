import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../renk_olustur/renkler.dart';
import '../stil_olustur/styles.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Maniler extends StatelessWidget {
  const Maniler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Maniler',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Maniler",
            style: AppBarYazi.appbarYazi,
          ).animate().fadeIn(delay: const Duration(milliseconds: 500)),
          centerTitle: true,
          actions: [
            InkWell(
              onTap: () {
                Fluttertoast.showToast(
                    msg: 'Uygulamayı Kapatıldı...',
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    backgroundColor: Colors.redAccent);
                SystemNavigator.pop();
              },
              child: const Icon(Icons.exit_to_app),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: ListView(
            children: [
              MyTimelineTile(
                isFirst: true,
                isLast: false,
                isPast: true,
                eventCard: Text(
                    "Tütün ektim söküldü.\nYaprakları döküldü.\nEller yarim dedikçe,\nBenim boynum büküldü.",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                    "İki gemi yanaşır,\nİçi dolu çamaşır.\nDiyarbakır kızları,\nAbime yakışır",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                    "Masa üstü pekmez,\nBu pekmez bana yetmez.\nDiyarbakır kızları,\nTaksisiz gelin gitmez.",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                    "Elma tatlı, nar tatlı.\nSevdiğim Bülent adlı.\nBülent'in mektupları\nHasır altında saklı.",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Bırakalım bir kenara\nGünler ile ayları\nBiraz sohbet edelim\nÇayları bitirelim.",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Güzelim güzelim,\nÇok konuşma şekerim.\nBeni ezmeye çalışma,\nSeni çok pis döverim",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Bir taş attım denize.\nSaat geldi sekize.\nKim kızını verir.\nSenin gibi kerize.",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Eğlenip gülüşelim.\nTanışıp birleşelim.\nBahşişi hazırla dedecim\nBayramda görüşelim.",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Karanfil sarkarım,\nAçılmaya korkarım.\nYar geliyor deseler,\nÖlü olsam kalkarım.",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Parmağimda yüzüğün\nİki mavi taşı var\nGideceğim oğlanın\nİki kiz kardeşi var",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Dere boyu dumandan\nGeçilmiyor çobandan\nAnne beni ayırdın\nSen de ayrıl babamdan",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Bir testi gazım var\nYazılacak yazım var\nSöylemeye utandım\nŞu oğlanda gözüm var",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Yalova'nın korusu\nMeşeli meşeli\nYalova'nın kızları\nHergün böyle neşeli",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Ayakkabı giyerim\nAltları delik deşik\nKaynanamdan isterim\nBeş tane beşi birlik",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Kara kara kazanlar\nKara yazı yazanlar\nCennet yüzü görmesin\nAramızı bozanlar",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Yatma yeşil çimene\nUyur uyanamazsın\nVerme beni ellere\nGörür dayanamazsın",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Tespih çiçeği bir tutam\nSöylediğin laftan utan\nBen seni düşünürken\nBelim kaldı bir tutam",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Kabak diktim kol attı\nKolları suya battı\nBenim bir sevgilim var\nPencereden gül attı",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Tavandaki fareler\nTıkır mıkır ettiler\nDaha yazacaktım ama\nKalemimi yediler",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Bisikletle gezersin\nKarıncaları ezersin\nMadem benden güzelsin\nNeden bekar gezersin",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Karanfilim gül beyaz\nAyrı düştük biz bu yaz\nSevdiğini bileyim\nMektubunu sıkça yaz",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Patlıcanın moruna\nVarmam köylü oğluna\nAltın saat taksalar\nYine girmem koluna",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Bahçelerde börülce\nOynar gelin görümce\nGörümceler olmasa\nGeçinirim ölünce",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Karanfilim mor açmış\nSaksılara dolaşmış\nYarim geliyor diye\nDağları aşmış",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Güle bindim, gülmedim\nGülden düştüm ölmedim\nKüçükken bir yar sevdim\nYar bilmedi, kıymeti",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                eventCard: Text(
                  "Sepet sepet yumurta\nSakın beni unutma\nUnutursan küserim\nMektubumu keserim",
                  style: SiyahRenk.siyah,
                ),
              ),
              MyTimelineTile(
                isFirst: false,
                isLast: true,
                isPast: true,
                eventCard: Text(
                  "Hatıra hatıra dedin\nBaşımın etini yedin\nAl sana bir hatıra\nÖmür boyu sakla",
                  style: SiyahRenk.siyah,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
class MyTimelineTile extends StatefulWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final Widget? child;
  final Widget? eventCard;
  MyTimelineTile(
      {super.key,
        required this.isFirst,
        required this.isLast,
        required this.isPast,
        required this.eventCard, this.child});

  @override
  State<MyTimelineTile> createState() => _MyTimelineTileState();
}

class _MyTimelineTileState extends State<MyTimelineTile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.0,
      child: TimelineTile(
        isFirst: widget.isFirst,
        isLast: widget.isLast,
        beforeLineStyle: LineStyle(
          color: widget.isPast ? Renkler.lavanta : Renkler.lavantaLight,
        ),
        indicatorStyle: IndicatorStyle(
            width: 30.0,
            color: widget.isPast ? Renkler.lavanta : Renkler.lavantaLight,
            iconStyle: IconStyle(
              iconData: Icons.done,
              color: widget.isPast ? Renkler.beyaz : Renkler.lavantaLight,
            )),
        endChild: EventCard(
          isPast: widget.isPast,
          child: widget.eventCard,
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final bool isPast;
  final Widget? child;
  EventCard({super.key, required this.isPast, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: isPast ? Renkler.lavantaLight : Renkler.lavanta,
          borderRadius: BorderRadius.circular(10.0)
      ),
      child: child!,
    );
  }
}
