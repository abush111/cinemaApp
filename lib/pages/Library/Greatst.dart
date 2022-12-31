import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class Greatst extends StatefulWidget {
  Greatst({Key? key}) : super(key: key);

  @override
  _GreatstState createState() => _GreatstState();
}

class _GreatstState extends State<Greatst> {
  final CollectionReference _Abraham =
      FirebaseFirestore.instance.collection('Abraham');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Color.fromRGBO(0, 6, 142, 0.9),
        child: StreamBuilder(
          stream: _Abraham.snapshots(), //build connection
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            if (streamSnapshot.hasData) {
              return ListView.builder(
                itemCount: streamSnapshot.data!.docs.length, //number of rows
                itemBuilder: (context, index) {
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[index];
                  return Card(
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(documentSnapshot['name']),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          children: [Text(documentSnapshot['name2'])],
                        ),
                      ),
                    ),
                  );
                },
              );
            }

            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
