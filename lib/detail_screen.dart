import 'dart:math';

import 'package:flutter/material.dart';
import 'package:dicost/model/cost_data.dart';

class DetailScreen extends StatelessWidget {
  final CostData cost;

  DetailScreen({
    required this.cost
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${cost.name}'),
          actions: [
            FavoriteButton()
          ]
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  height: 245,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: cost.imageAssets.map((imageAsset) {
                      return Padding(
                        padding: EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(imageAsset),
                        ),
                      );
                    }).toList()
                  ),
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                        elevation: 3,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Icon(
                                      Icons.location_on
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(cost.location)
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                      Icons.location_city
                                  ),
                                  SizedBox(height: 8.0),
                                  Text(cost.city)
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                      Icons.bed
                                  ),
                                  SizedBox(height: 8.0),
                                  Text('${cost.availability} Available')
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                      Icons.monetization_on
                                  ),
                                  SizedBox(height: 8.0),
                                  Text('Rp ' + cost.price)
                                ],
                              ),
                            ],
                          ),
                        )
                    ),
                  )
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, bottom: 8, right: 16, top: 8),
                  child: Text(
                    cost.description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text("Fasilitas:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
                Container(
                  height: 95,
                  child: Card(
                    margin: EdgeInsets.all(16),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                              children: [
                                Icon(
                                    Icons.security
                                ),
                                Text('Keamanan')
                              ]
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Icon(
                                  Icons.desk
                              ),
                              Text('Meja Belajar')
                            ]
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                              children: [
                                Icon(
                                    Icons.garage
                                ),
                                Text('Tempat Parkir')
                              ]
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                              children: [
                                Icon(
                                    Icons.shower
                                ),
                                Text('Kamar Mandi')
                              ]
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                              children: [
                                Icon(
                                    Icons.tv
                                ),
                                Text('Televisi')
                              ]
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                              children: [
                                Icon(
                                    Icons.wifi
                                ),
                                Text('Wi-Fi')
                              ]
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                              children: [
                                Icon(
                                    Icons.kitchen
                                ),
                                Text('Dapur')
                              ]
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                              children: [
                                Icon(
                                    Icons.local_laundry_service
                                ),
                                Text('Laundry')
                              ]
                          ),
                        ),
                      ]
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, bottom: 8, right: 16, top: 8),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Book Room'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}


class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.white,
        )
    );
  }
}
