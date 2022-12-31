import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Homename extends StatelessWidget {
  int _current = 0;
  List imgList = [
    'http://www.alemcinema.com/storage/app/uploads/public/62e/b7a/1fe/62eb7a1fe3f7e560943421.jpg',
    'http://www.alemcinema.com/storage/app/uploads/public/631/184/be4/631184be4697b004127004.jpg',
    'http://www.alemcinema.com/storage/app/uploads/public/630/7a0/e0b/6307a0e0b0086407710608.jpg',
    'https://angelsethiopia.com/wp-content/uploads/2021/10/606c395799dad262383601.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              height: 250.0,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            items: imgList.map((imgurl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.green,
                    ),
                    child: Image.network(
                      imgurl,
                      fit: BoxFit.fill,
                    ),
                  );
                },
              );
            }).toList(),
          ),
          Container(
            child: Center(child: Column(children: [])),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              child: Container(
                color: Color.fromRGBO(0, 6, 147, 1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Alem Cinema is a pioneer and leader in the cinema industry. It was the first privately owned cinema in Ethiopia opened in April 2004. Alem Cinema is committed to nurture the advancement of the cinema business. It is very reputable for creating opportunities to domestic filmmakers who produce films in local languages. For the past 15 years, Alem Cinema has been the preferred choice because they offer many attractive benefits such as refreshments, comfort seating, and clear screenings.",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
