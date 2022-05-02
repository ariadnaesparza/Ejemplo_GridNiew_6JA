import 'package:flutter/material.dart';
import 'package:esparza/gridviewempleado.dart';

void main() {
  runApp(SorianaApp());
} //funcion principal

class SorianaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aprendiendo Gridview',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: MyHomePage());
  }
} //widget sin estado

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
} //widget con estado

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "assets/images/soriana1.2.png",
    "assets/images/soriana2.2.jpg",
    "assets/images/soriana3.2.jpg",
    "assets/images/soriana1.2.png",
    "assets/images/soriana2.2.jpg",
    "assets/images/soriana3.2.jpg",
    "assets/images/soriana1.2.png",
    "assets/images/soriana2.2.jpg",
    "assets/images/soriana3.2.jpg",
    "assets/images/soriana1.2.png",
    "assets/images/soriana2.2.jpg",
    "assets/images/soriana3.2.jpg",
    "assets/images/soriana1.2.png",
    "assets/images/soriana2.2.jpg",
    "assets/images/soriana3.2.jpg",
    "assets/images/soriana1.2.png",
    "assets/images/soriana2.2.jpg",
    "assets/images/soriana3.2.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView"),
        ),
        body: GridView.builder(
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(images[index], fit: BoxFit.cover);
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
