import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('DICOST Salemba'),
          actions: [
            IconButton(
              icon: Icon(Icons.favorite),
              tooltip: 'Add to Favorite',
              onPressed: () {},
            ),
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
                    children: [
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/salemba-1.jpg'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/salemba-2.jpg'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/salemba-3.jpg'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/salemba-4.jpg'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/salemba-5.jpg'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
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
                              Icons.location_city
                          ),
                          SizedBox(height: 8.0),
                          Text('Jakarta')
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                              Icons.bed
                          ),
                          SizedBox(height: 8.0),
                          Text('2 Available')
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
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, bottom: 8, right: 16, top: 8),
                  child: Text(
                    'Moderen dan juga minimalis adalah ungkapan yang paling cocok untuk menggambarkan bangunan kost ini. Desainnya yang trendy dan dilengkapi dengan tanaman hijau menghadirkan suasana ketenangan dan kenyamanan. Kost eksklusif ini memiliki segalanya, mulai dari lift, dapur dan ruang makan, area umum, bahkan rooftop.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16.0),
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
                )
              ],
            ),
          ),
        )
    );
  }
}