import 'package:calisma_yapisi/Bottom_nav_kullanimi/sayfa_1.dart';
import 'package:calisma_yapisi/Bottom_nav_kullanimi/sayfa_2.dart';
import 'package:calisma_yapisi/Bottom_nav_kullanimi/sayfa_3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int Secilen = 0;
  var sayfalar = [const SayfaBir(),const SayfaIki(),const SayfaUc()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navbar"),backgroundColor: Colors.deepPurpleAccent,),
      body: sayfalar[Secilen],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.looks_one_outlined),label: "bir"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_two_outlined),label: "iki"),
          BottomNavigationBarItem(icon: Icon(Icons.looks_3_outlined),label: "üç"),
        ],
        currentIndex: Secilen ,
        backgroundColor: Colors.deepPurpleAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white12,
        onTap: (index){
          setState(() {
            Secilen = index;
          });
        },
      ),
    );
  }
}
