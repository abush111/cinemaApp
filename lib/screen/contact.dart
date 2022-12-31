import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8),
        child: Container(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'http://www.addismap.com/static-3z-map.php?lat=8.98996677123621&lng=38.7848388133145&name=Alem+Cinema'))),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, bottom: 0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 45,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 100, left: 6, top: 6, bottom: 5),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Name',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 100, left: 6, bottom: 5),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Email',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 100, left: 6, bottom: 5),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Phone', border: OutlineInputBorder()),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 67, bottom: 13, left: 6),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Message',
                              border: OutlineInputBorder()),
                          maxLines: 3,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8, right: 290),
                      child: SizedBox(),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
