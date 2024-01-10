import 'package:calisma_yapisi/sonuc_ekrani.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calisma_yapisi/kisiler.dart';

class OyunEkrani extends StatefulWidget {
  Kisiler kisiler;

  OyunEkrani({required this.kisiler});
  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {
  //telefonun kendi göre dönme tuşunu açıp kapatmaya yarayan yada yönlendirmeyi yapmaya yarayan fonksiyon
  //false değeri dönme işlemini kapatıyo
  //true değğeri geri dönem işlemini açıyo
  Future<bool> geriDonusTusu(BuildContext context) async {
    print("Tusa Basıldı");
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Oyun Ekranı"),
        leading: IconButton(onPressed: (){
          print("App Bar Basıldı");
          Navigator.pop(context);
        }, icon: const Icon(Icons.accessible_forward_outlined)),
      ),
      body: WillPopScope(
        onWillPop: () => geriDonusTusu(context), // Telefonun kendi geri dönme mekanizmasını kapatıp açmaya yarayan fonksiyon
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("${widget.kisiler.ad} - ${widget.kisiler.yas} - ${widget.kisiler.boy} - ${widget.kisiler.bekar}"),
              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SonucEkrani())); //pushReplacmement kodu ile geri gitme işleminde direk anasayfaya yönlendirliyo arak planda kaldırılıyo sayfa
              }, child: const Text("Bitti")),
            ],
          ),
        ),
      ),
    );
  }
}
