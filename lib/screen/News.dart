import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  List imag = [
    'https://angelsethiopia.com/wp-content/uploads/2021/09/60f08f4721c2d211742441.jpg?v=ae41a6d38b78',
    'https://angelsethiopia.com/wp-content/uploads/2021/09/60f08f4721c2d211742441.jpg?v=ae41a6d38b78',
    'https://angelsethiopia.com/wp-content/uploads/2021/09/60f08f4721c2d211742441.jpg?v=ae41a6d38b78',
    'https://angelsethiopia.com/wp-content/uploads/2021/09/60f08f4721c2d211742441.jpg?v=ae41a6d38b78',
  ];
  List name = [
    'Alem Cinema is a pioneer and leader in the cinema industry. It was the bbbbbbb bbbbbbbbbbbbbbbbbb mmmmmmmmmmmmmmmmmmmmmmmmmmmm ',
    'Alem Cinema is a pioneer and leader in the cinema industry. It was the bbbbbbb bbbbbbbbbbbbbbbbbb mmmmmmmmmmmmmmmmmmmmmmmmmmmm',
    'Alem Cinema is a pioneer and leader in the cinema industry. It was the bbbbbbb bbbbbbbbbbbbbbbbbb mmmmmmmmmmmmmmmmmmmmmmmmmmmm ',
    'Alem Cinema is a pioneer and leader in the cinema industry. It was the bbbbbbb bbbbbbbbbbbbbbbbbb mmmmmmmmmmmmmmmmmmmmmmmmmmmm',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://i.ytimg.com/vi/5D3wr7Ny1Sk/maxresdefault.jpg'))),
          ),
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.only(right: 280),
            child: Column(
              children: [
                Text(
                  "News",
                  style: TextStyle(fontSize: 23),
                )
              ],
            ),
          ),
        ),
        Flexible(
          child: Container(
            child: ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) => Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Card(
                  elevation: 20.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0)),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            width: 35,
                            height: 55,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(imag[index])))),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: SizedBox(
                                width: 200,
                                height: 50,
                                child: Text(
                                  name[index],
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
