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
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrains) {
          if(constrains.maxWidth <= 1000) {
            return DetailMobileScreen(cost: cost);
          } else {
            return DetailWebScreen(cost: cost);
          }
        },
    );
  }
}

class DetailMobileScreen extends StatelessWidget {
  final CostData cost;

  DetailMobileScreen({
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

class DetailWebScreen extends StatefulWidget {
  final CostData cost;

  DetailWebScreen({
    required this.cost
  });

  @override
  State<DetailWebScreen> createState() => _DetailWebScreenState();
}

class _DetailWebScreenState extends State<DetailWebScreen> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('${widget.cost.name}'),
            actions: [
              FavoriteButton()
            ]
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 32
          ),
          child: Center(
            child: Container(
              width: 1200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      widget.cost.name,
                      style: TextStyle(
                        fontSize: 32
                      )
                  ),
                  SizedBox(height: 16),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                          children: [
                            Column(
                              children: [
                                Scrollbar(
                                  isAlwaysShown: true,
                                  controller: _scrollController,
                                  child: Container(
                                      height: 400,
                                      padding: EdgeInsets.only(bottom: 16),
                                      child: ListView(
                                        controller: _scrollController,
                                        scrollDirection: Axis.horizontal,
                                        children: widget.cost.imageAssets.map((imageAsset) {
                                          return Padding(
                                            padding: EdgeInsets.all(4.0),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(10),
                                              child: Image.asset(imageAsset),
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    )
                                )
                              ],
                            ),
                          ],
                        )
                      ),
                      SizedBox(width: 32),
                      Expanded(
                          child: Card(
                            child: Container(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    child: Text(
                                      widget.cost.name,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 30,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 12.0),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        children: [
                                          Icon(Icons.location_on),
                                          SizedBox(height: 8.0),
                                          Text(
                                              widget.cost.location
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Icon(Icons.location_city),
                                          SizedBox(height: 8.0),
                                          Text(
                                              widget.cost.city
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Icon(Icons.bed),
                                          SizedBox(height: 8.0),
                                          Text(
                                              "${widget.cost.availability} Available"
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Icon(Icons.monetization_on),
                                          SizedBox(height: 8.0),
                                          Text(
                                              widget.cost.price
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 4.0),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 16.0),
                                    child: Text(
                                      widget.cost.description,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        fontSize: 16.0
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "Fasilitas",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
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
                                    ],
                                  ),
                                  Row(
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
                                    ],
                                  ),
                                  ConstrainedBox(
                                    constraints: const BoxConstraints(minWidth: double.infinity),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Book Room'),
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
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
