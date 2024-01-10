import 'package:calisma_yapisi/Bottom_nav_kullanimi/bottom_sayfa.dart';
import 'package:calisma_yapisi/Kullanici_etkilesimi/kullanici_etkilesimi.dart';
import 'package:calisma_yapisi/anasayfa.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false ,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const KullaniciEtkilesim(),
    );
  }
}
