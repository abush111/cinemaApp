import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class hometab extends StatefulWidget {
  const hometab({Key? key, required String text}) : super(key: key);

  @override
  State<hometab> createState() => _hometabState();
}

class _hometabState extends State<hometab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
            title: Text('hello'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'Shadule'),
                Tab(text: 'Comming sooon'),
                Tab(text: 'Box office'),
                Tab(text: 'Video'),
                Tab(text: 'News'),
                Tab(text: 'Libray'),
                Tab(text: 'Contact us'),
              ],
            )),
        body: TabBarView(children: [
          Center(
            child: const Text("helll"),
          ),
          Center(
            child: const Text("helll"),
          ),
          Center(
            child: const Text("helll"),
          ),
          Center(
            child: const Text("helll"),
          ),
          Center(
            child: const Text("helll"),
          ),
          Center(
            child: const Text("helll"),
          ),
          Center(
            child: const Text("helll"),
          ),
          Center(
            child: const Text("helll"),
          ),
        ]),
      ),
    );
  }
}
