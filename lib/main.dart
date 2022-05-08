import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: MyApp()
  ));
}

class MyApp extends StatelessWidget{
  String mesaj = "İlk Uygulamamız";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mesaj),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Sonucu Gör"),
          onPressed: (){
            int puan = 75;
            mesaj = "";
            if(puan >= 50){
              mesaj = "Geçti.";
            } else if (puan >= 40){
              mesaj = "Bütünlemeye Kaldı.";
            } else {
              mesaj ="Kaldı.";
            }
            var alert = AlertDialog(
              title: Text("Sınav sonucu"),
              content: Text(mesaj),
            );
            showDialog(context: context, builder: (BuildContext context)=>alert);
          },
        ),
      ),
    );
  }
}
