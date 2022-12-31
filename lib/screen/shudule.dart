import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'ListStudentPage.dart';

class Shudule extends StatefulWidget {
  const Shudule({Key? key}) : super(key: key);

  @override
  State<Shudule> createState() => _ShuduleState();
}

class _ShuduleState extends State<Shudule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 4),
        child: Container(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 320,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://eliana-public-images.s3.us-east-2.amazonaws.com/d07a5813-7c2d-42e7-b44d-de41ce401f25-blob'))),
                  )
                ],
              ),
              ListStudentPage(),
              Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Container(
                  child: SizedBox(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
