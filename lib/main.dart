// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Radio Button Kullanımı'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
int radioDeger = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             RadioListTile(
              title: Text("Beşiktaş"),
              value: 1,
              groupValue: radioDeger,
              activeColor: Colors.black,
              onChanged: (int? veri){
             setState(() {
               radioDeger = veri!;
             });
             print("Beşiktaş seçildi");
              }
             ),
             RadioListTile(
              title: Text("Galatasaray"),
              value: 1,
              groupValue: radioDeger,
              activeColor: Colors.red,
              onChanged: (int? veri){
             setState(() {
               radioDeger = veri!;
             });
             print("Galatasaray seçildi");
              }
             ),
             RaisedButton(
              child: Text("Göster"),
              onPressed: (){
                if(radioDeger == 1){
                  print("Button : Beşiktaş seçildi");
                }
               if(radioDeger ==2){
                print("Button : Galatasaray seçildi");
               }


              },
             )
          ],
        ),
      ),
     
    );
  }
}
