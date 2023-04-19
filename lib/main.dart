import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Cklass',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "assets/images/zapato1.png",
    "assets/images/zapato2.jpg",
    "assets/images/zapato3.jpg",
    "assets/images/zapato4.jpg",
    "assets/images/zapato5.jpg",
    "assets/images/zapato6.jpg",
    "assets/images/zapato7.jpg",
    "assets/images/zapato8.jpg",
    "assets/images/zapato9.jpg",
    "assets/images/zapato10.jpg",
    "assets/images/zapato11.jpg",
    "assets/images/zapato12.jpg",
    "assets/images/zapato13.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter GridView"),
        ),
        body: GridView.builder(
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(images[index], fit: BoxFit.cover);
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 10),
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
