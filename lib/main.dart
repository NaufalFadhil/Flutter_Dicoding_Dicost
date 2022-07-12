import 'package:flutter/material.dart';

import 'package:dicost/detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DICOST',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('images/farm-house.jpg'),
            Container(
                margin: EdgeInsets.all(16.0),
                child: Text(
                  'DICOST',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold
                  ),
                )
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(
                          Icons.location_on
                      ),
                      SizedBox(height: 8.0),
                      Text('Salemba')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                          Icons.monetization_on
                      ),
                      SizedBox(height: 8.0),
                      Text('Rp 2.400.000')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                          Icons.location_city
                      ),
                      SizedBox(height: 8.0),
                      Text('Jakarta')
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
