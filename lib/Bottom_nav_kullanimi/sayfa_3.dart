import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SayfaUc extends StatefulWidget {
  const SayfaUc({super.key});

  @override
  State<SayfaUc> createState() => _SayfaUcState();
}

class _SayfaUcState extends State<SayfaUc> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Sayfa Üç", style: TextStyle(fontSize: 23,color: Colors.lightGreen),),);
  }
}
