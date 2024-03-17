// import 'package:evsathi/screens/booking_page.dart';
import 'package:evsathi/screens/featurePage/featurePage.dart';
import 'package:evsathi/screens/statusPage/status.dart';
// import 'package:evsathi/screens/status.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'evSathi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: featurePage(),
    );
  }
}
