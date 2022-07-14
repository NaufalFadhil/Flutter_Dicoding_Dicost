import 'package:dicost/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:dicost/model/cost_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DICOST'),
      ),
      body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () {},
                  child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Welcome"),
                                    Text("Naufal Fadhil Athallah"),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.wallet,
                                          size: 20.0,
                                          color: Colors.deepPurple,
                                        ),
                                        SizedBox(width: 5),
                                        Text('Rp. 5.000.000,-')
                                      ],
                                    ),
                                  ],
                                )
                            ),
                            Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.account_circle,
                                      size: 65.0,
                                      color: Colors.deepPurple,
                                    )
                                  ],
                                )
                            ),
                          ],
                        ),
                      )
                  ),
                )
              ),
              Expanded(
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return GridView.builder(
                      padding: EdgeInsets.only(bottom: 16, left: 8, right: 8),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: (constraints.maxWidth <= 720) ? 2 : (constraints.maxWidth <= 1080) ? 4 : 6,
                      ),
                      itemBuilder: (context, index) {
                        final CostData cost = costDataList[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return DetailScreen(cost: cost);
                            }));
                          },
                          child: Card(
                            margin: EdgeInsets.all(10),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                    flex: 4,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20)
                                      ),
                                      child: Image.asset(cost.imageAsset),
                                    )
                                ),
                                Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            cost.name,
                                            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          Text(
                                              "${cost.location} ${cost.city}",
                                              overflow: TextOverflow.ellipsis,
                                          )
                                        ],
                                      ),
                                    )
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: costDataList.length,
                    );
                  },
                ),
              )
            ],
          )
        ),
    );
  }
}
