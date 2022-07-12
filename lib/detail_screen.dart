import 'package:flutter/material.dart';


class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
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