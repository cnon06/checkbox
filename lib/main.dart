import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

bool? kotlinDurum = false;
bool? dartDurum=true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              CheckboxListTile(value: kotlinDurum,
                title: Text("Kotlin"),
                controlAffinity: ListTileControlAffinity.leading,
                checkColor: Colors.red,
                activeColor: Colors.limeAccent,
                onChanged:
              (bool? veri)
              {

                setState(() {
                  kotlinDurum =veri;
                });
                print(kotlinDurum! ? 'Kotlin seçildi.' : 'Kotlin seçilmedi.');
              },),

            CheckboxListTile(value: dartDurum,
              title: Text("Dart"),
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.red,
              activeColor: Colors.limeAccent,
              onChanged:
                  (bool? veri)
              {

                setState(() {
                  dartDurum =veri;
                });
                print(dartDurum! ? 'Dart seçildi.' : 'Dart seçilmedi.');
              },),
         Text("Dart durum: $dartDurum, Kotlin durum: $kotlinDurum"),


          ],

        ),
      ),

    );
  }
}
