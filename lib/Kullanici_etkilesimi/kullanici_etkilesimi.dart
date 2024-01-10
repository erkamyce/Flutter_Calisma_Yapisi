import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KullaniciEtkilesim extends StatefulWidget {

   const KullaniciEtkilesim({super.key});

  @override
  State<KullaniciEtkilesim> createState() => _KullaniciEtkilesimState();
}

class _KullaniciEtkilesimState extends State<KullaniciEtkilesim> {
  var tfControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kullanıcı"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text("Silme İstiyormusunuz"),
                      action: SnackBarAction(
                          label: "Evet",
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: const Text("Silindi"),
                            ));
                          }),
                    ),
                  );
                },
                child: const Text("Snack Bar varsayılan ")),
            ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text(
                        "Silme İstiyormusunuz",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                      backgroundColor: CupertinoColors.systemGrey2,
                      action: SnackBarAction(
                          label: "Evet",
                          textColor: Colors.red,
                          onPressed: () {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text(
                                "Silindi",
                                style: TextStyle(color: Colors.black),
                              ),
                              backgroundColor: CupertinoColors.systemGrey2,
                            ));
                          }),
                    ),
                  );
                },
                child: const Text("Snack Bar özel ")),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context){
                        return AlertDialog(
                          title: const Text("Başlık"),
                          content: const Text("içerik"),
                          actions: [
                            TextButton(onPressed: () {
                              Navigator.pop(context);
                            }, child: const Text("iptal")),
                            TextButton(onPressed: () {
                              Navigator.pop(context);
                            }, child: const Text("tamam")),
                          ],
                        );
                      });
                }, child: const Text("Alert varsayılan")),
            ElevatedButton(onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: const Text("Kayıt İşlemi"),
                      content: TextField(controller: tfControl, decoration: const InputDecoration(hintText: "veri"),),
                      backgroundColor: Colors.blueGrey,
                      actions: [
                        TextButton(onPressed: () {
                          Navigator.pop(context);
                        }, child: const Text("iptal" , style:  TextStyle(color : Colors.black),)),
                        TextButton(onPressed: () {
                          Navigator.pop(context);
                        }, child: const Text("tamam" , style:  TextStyle(color: Colors.black),)),
                      ],
                    );
                  });
            }, child: const Text("Alert özel  ")),
          ],
        ),
      ),
    );
  }
}
