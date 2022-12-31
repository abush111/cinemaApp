import 'package:flutter/material.dart';

import '../pages/boxoffice/bestofmonth.dart';
import '../pages/boxoffice/bestofweek.dart';
import '../pages/boxoffice/bestofyear.dart';

class Boxoffice extends StatefulWidget {
  const Boxoffice({Key? key}) : super(key: key);
  @override
  _BoxofficeState createState() => _BoxofficeState();
}

class _BoxofficeState extends State<Boxoffice> {
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
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://eliana-public-images.s3.us-east-2.amazonaws.com/d07a5813-7c2d-42e7-b44d-de41ce401f25-blob'))),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 14.0),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 6, 142, 0.9),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                            text: 'Best of week',
                          ),
                        ),
                        SizedBox(
                          width: 90,
                          child: Tab(
                            text: 'Best monthly',
                          ),
                        ),
                        SizedBox(
                          width: 90,
                          child: Tab(
                            text: 'Best of year',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: TabBarView(
                children: [Bestofweek(), Bestofmonth(), Bestofyear()],
              ))
            ],
          ),
        ));
  }
}
