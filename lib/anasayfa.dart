import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/oyun_ekrani.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}


class _AnasayfaState extends State<Anasayfa> {
  int sayac = 0;
  bool kontrol = true;

  @override
  void initState() {
    super.initState();
    //Sayfa ilk çalıştığında çalışır setState ile çalıştırılmaz
    //build metodu her setState Sonrası tekrardan çalışırı
  }

  Future<int> toplama(int sayi1 ,int sayi2) async  {
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuç : $sayac"),
            ElevatedButton(onPressed: (){
              setState(() {
                sayac += 1;
              });
            }, child: const Text("Tıkla")),
            ElevatedButton(onPressed: (){
              var kisi = Kisiler(ad: "Erkam", yas: 22, boy: 1.75, bekar: false);
              Navigator.push(context, MaterialPageRoute(builder: (context) => OyunEkrani(kisiler: kisi)))
                  .then((value) {
                    print("ana sayfaya dönlüdü");  //then kodu ile bir önceki sayfadan geri döndüğümüzde dönen verileri güncellemek için kullanılır
              }); // İstediğin sayfaya gitme kodu
            }, child: const Text("Tuş")),
            Visibility(visible: kontrol,child: Text("Merhaba")),
            Text(kontrol ? "Merhaba" : "Güle Güle", style: TextStyle(color: kontrol ? Colors.blue : Colors.red),),
            ((){
              if(kontrol){
                return Text("Merhaba");
              }else{
                return Text("Güle Güle");
              }
            }()),
            ElevatedButton(onPressed: (){
              setState(() {
                kontrol = true;
              });
            }, child: const Text("durum 1 true")),
            ElevatedButton(onPressed: (){
              setState(() {
                kontrol = false;
              });
            }, child: const Text("durum 2 false")),
            FutureBuilder<int>(
              future: toplama(10, 20),
              builder: (context,snapshot){
                if(snapshot.hasError){
                  return const Text("hata olustu");
                }
                if(snapshot.hasData){
                  return Text("Sonuç : ${snapshot.hasData}");
                }else{
                  return const Text("Sonuç Yok");
                }
              }
            ),
          ],
        ),
      ),
    );
  }
}
