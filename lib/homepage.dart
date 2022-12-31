import 'package:alema_cinema/screen/Boxoffice.dart';
import 'package:alema_cinema/screen/Comming.dart';
import 'package:alema_cinema/screen/Library.dart';
import 'package:alema_cinema/screen/News.dart';
import 'package:alema_cinema/screen/Video.dart';
import 'package:alema_cinema/screen/contact.dart';
import 'package:alema_cinema/screen/new.dart';
import 'package:alema_cinema/screen/shudule.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Center(
              child: Text(
                "Alem cinema",
              ),
            ),
            elevation: 0,
            titleSpacing: 10,
            backgroundColor: Color.fromRGBO(0, 6, 142, 0.9),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            )),
          ),
          body: Padding(
            padding: EdgeInsets.only(bottom: 10, top: 10),
            child: Column(
              children: [
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 6, 142, 0.9),
                  ),
                  child: TabBar(
                    isScrollable: true,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white,
                    tabs: const [
                      SizedBox(
                        width: 100,
                        child: Tab(
                          text: 'Home',
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Tab(
                          text: 'Schadule',
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Tab(
                          text: 'Box Office',
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Tab(
                          text: 'Library',
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Tab(
                          text: 'Contact',
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Tab(
                          text: 'News',
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Tab(
                          text: 'Video',
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Tab(
                          text: 'Comming Soon',
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(
                  children: [
                    Homename(),
                    Shudule(),
                    Boxoffice(),
                    Library(),
                    Contact(),
                    News(),
                    Video(),
                    Comming(),
                  ],
                ))
              ],
            ),
          )),
    );
  }
}
