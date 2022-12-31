import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';

class Comming extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://eliana-public-images.s3.us-east-2.amazonaws.com/d07a5813-7c2d-42e7-b44d-de41ce401f25-blob')))),
                Container(
                  child: Column(children: [Text("Comming Soon")]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 200.0,
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
                              width: 400,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
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
                  ),
                ),
                Container(
                  child: Column(children: [Text("Recently Added")]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: 200.0,
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
                              width: 400,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
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
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
