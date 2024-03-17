import 'package:evsathi/screens/bookingPage/booking_page.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class statusPage extends StatefulWidget {
  const statusPage({Key? key}) : super(key: key);

  @override
  State<statusPage> createState() => _statusPageState();
}

class _statusPageState extends State<statusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.greenAccent, Colors.blueAccent],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Status Update',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    CircularPercentIndicator(
                      animation: true,
                      animationDuration: 1000,
                      radius: 150,
                      lineWidth: 30,
                      percent: 0.5,
                      progressColor: Colors.green,
                      backgroundColor: Colors.green.shade100,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0, end: 0.5),
                        duration: Duration(seconds: 2),
                        builder: (_, double value, __) {
                          return Text(
                            "${(value * 100).toInt()}%",
                            style: TextStyle(fontSize: 50, color: Colors.black),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20), // Add space below the indicator
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => bookingPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text('Booking Page'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
