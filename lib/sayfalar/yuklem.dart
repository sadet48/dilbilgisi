import 'package:flutter/material.dart';
import '../stil_olustur/styles.dart';
import 'konular.dart';
class Yuklem extends StatelessWidget {
  const Yuklem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
          "Yüklem",
          style: AppBarYazi.appbarYazi,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "\t\t\tTümcede iş, oluş, durum ve hareket bildiren kelime veya kelime grubuna denir. Tümcenin temel ögesidir. Genellikle tümce sonunda yer alır.",
                    style: SiyahRenk.siyah,
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Örnekler",
                    style: MaviRenk.mavi,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(
                    text: 'Okula ',
                    style: SiyahRenk.siyah,
                    children: [
                      TextSpan(
                        text: 'gittim.',
                        style: KirmiziRenk.kirmizi,
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: const TextSpan(
                    text: 'Su ',
                    style: TextStyle(
                      fontFamily: 'TTKB Dik Temel Abece',
                      fontSize: 24.0,
                      letterSpacing: 1.1,
                      color: Colors.black87,
                    ),
                    children: [
                      TextSpan(
                        text: 'içtim.',
                        style: TextStyle(
                          fontFamily: 'TTKB Dik Temel Abece',
                          fontSize: 24.0,
                          letterSpacing: 1.1,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}
