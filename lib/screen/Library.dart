import 'package:flutter/material.dart';

import '../pages/Library/Greatst.dart';
import '../pages/Library/Oscar.dart';
import '../pages/Library/Thebest.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);
  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, left: 0, right: 0, bottom: 8),
                  child: Container(
                    height: 320,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/en/8/8f/Price_of_Love_2015_film_poster.png'))),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 6, 142, 0.9),
                  ),
                  child: TabBar(
                    isScrollable: false,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white,
                    indicator: BoxDecoration(
                      color: Color.fromRGBO(128, 5, 147, 0.9),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    tabs: const [
                      SizedBox(
                        width: 100,
                        child: Tab(
                          text: 'Greatst',
                        ),
                      ),
                      SizedBox(
                        width: 90,
                        child: Tab(
                          text: 'Oscar',
                        ),
                      ),
                      SizedBox(
                        width: 90,
                        child: Tab(
                          text: 'The best',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: TabBarView(
                children: [Greatst(), Oscar(), Thebest()],
              ))
            ],
          ),
        ));
  }
}
