import 'package:flutter/material.dart';

class paginainicial extends StatefulWidget {
  paginainicial({Key? key}) : super(key: key);
  @override
  paginainicialState createState() => paginainicialState();
} //widget con estado

class paginainicialState extends State<paginainicial> {
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
