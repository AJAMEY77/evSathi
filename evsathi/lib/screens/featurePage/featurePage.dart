import 'package:evsathi/screens/detailPage/stationDetail.dart';
import 'package:evsathi/screens/featurePage/module/station.dart';
import 'package:evsathi/screens/featurePage/stationTile.dart';
import 'package:flutter/material.dart';

class featurePage extends StatefulWidget {
  const featurePage({Key? key}) : super(key: key);

  @override
  State<featurePage> createState() => _featurePageState();
}

class _featurePageState extends State<featurePage> {
  List stationList = [
    station(
        name: "Station_1",
        avail: "Available",
        descrip:
            'Latitude: 28.6139 \n Longitude: 77.2090 \n Price per 15 min (in rupees): 50 \n Charge Type: DC \n Speed (kW): 50 \n Distance from Location (km): 2.5',
        rating: "4.5",
        chargeType: "AC",
        imgPath: '../assets/ev1.jpeg'),
    station(
        name: "Station_2",
        avail: "Busy",
        descrip:
            'Latitude: 28.6271 \n Longitude: 77.2183 \n Price per 15 min (in rupees): 40 \n Charge Type: AC \n Speed (kW): 22 \n Distance from Location (km): 3.2',
        rating: "3.2",
        chargeType: "AC",
        imgPath: '../assets/ev2.jpg'),
    station(
        name: "Station_3",
        avail: "Available",
        descrip:
            'Latitude: 28.6142 \n Longitude: 77.2107 \n Price per 15 min (in rupees): 60 \n Charge Type: DC \n Speed (kW): 100 \n Distance from Location (km): 1.8',
        rating: "2.9",
        chargeType: "DC",
        imgPath: '../assets/ev3.png'),
    station(
        name: "Station_4",
        avail: "Busy",
        descrip:
            'Latitude: 28.6214 \n Longitude: 77.2015 \n Price per 15 min (in rupees): 70 \n Charge Type: DC \n Speed (kW): 150 \n Distance from Location (km): 3.9',
        rating: "4.8",
        chargeType: "DC",
        imgPath: '../assets/ev4.png'),
  ];

  bool isHovered1 = false;
  bool isHovered2 = false;

  void navigateDetail(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => stationDetailPage(
          st: stationList[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: Icon(Icons.menu),
        title: Text("Features", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.greenAccent, Colors.blueAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Find Shortest Distance",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 30),
                    MouseRegion(
                      onEnter: (_) {
                        setState(() {
                          isHovered1 = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          isHovered1 = false;
                        });
                      },
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: isHovered1
                                    ? [Colors.greenAccent, Colors.blueAccent]
                                    : [Colors.blue, Colors.green],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 5,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20.0,
                              vertical: 10.0,
                            ),
                            child: Text(
                              "Find Shortest Path",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      '../assets/one.png',
                      height: 180,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stationList.length,
                itemBuilder: (context, index) => stationTile(
                  st: stationList[index],
                  onTap: () => navigateDetail(index),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            decoration: BoxDecoration(
              color: Colors.green[100],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      '../assets/one.png',
                      height: 50,
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Station ",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Available',
                          style: TextStyle(color: Colors.grey[700]),
                        )
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                  size: 28,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
