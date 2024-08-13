import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carruseles Molina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarouselMolina(),
    );
  }
}

class CarouselMolina extends StatelessWidget {
  final List<String> imageList = [
    "https://raw.githubusercontent.com/GMNunez20/carruselV2/main/carro/carr1.png",
    "https://raw.githubusercontent.com/GMNunez20/carruselV2/main/carro/carr2.png",
    "https://raw.githubusercontent.com/GMNunez20/carruselV2/main/carro/carr3.png",
    "https://raw.githubusercontent.com/GMNunez20/carruselV2/main/carro/carr4.png",
    "https://raw.githubusercontent.com/GMNunez20/carruselV2/main/carro/carr5.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carruseles'),
      ),
      body: Center(
        child: CarouselSlider(
          items: imageList.map((imgUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Image.network(
                    imgUrl,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 300.0,
            viewportFraction: 0.8,
            autoPlay: false,
            enlargeCenterPage: true,
          ),
        ),
      ),
    );
  }
}
