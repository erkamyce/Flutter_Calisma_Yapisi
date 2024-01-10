import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {
  const SonucEkrani({super.key});

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sonuç Ekranı"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context); //Geri Sayfaya Gitme
            }, child: const Text("Geri Dön")),
            ElevatedButton(onPressed: (){
              Navigator.of(context).popUntil((route) => route.isFirst); //Ana Sayfaya Gitme
            }, child: const Text("Anasayfaya Geri Dön")),
          ],
        ),
      ),
    );
  }
}
