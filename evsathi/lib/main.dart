<<<<<<< HEAD
// import 'package:evsathi/screens/booking_page.dart';
import 'package:evsathi/screens/featurePage/featurePage.dart';
import 'package:evsathi/screens/statusPage/status.dart';
// import 'package:evsathi/screens/status.dart';
=======
import 'package:evsathi/screen/AdminPage/loginPage.dart';
import 'package:evsathi/screen/Auth/login.dart';
import 'package:evsathi/screen/googleMap/map.dart';
import 'package:evsathi/screen/paymentPage/upi.dart';
>>>>>>> 8847e9243f1e67128b296efe184d4de3105fb3bc
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
      title: 'evSathi',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: featurePage(),
=======
    var brightness = MediaQuery.of(context).platformBrightness;

    var themeMode =
        brightness == Brightness.dark ? ThemeMode.dark : ThemeMode.light;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.indigo,
        // ... other theme configurations
      ),
      themeMode: themeMode,
      initialRoute: 'loginPage',
      routes: {
        'loginPage': (context) => const LoginPage(),
      },
>>>>>>> 8847e9243f1e67128b296efe184d4de3105fb3bc
    );
  }
}
