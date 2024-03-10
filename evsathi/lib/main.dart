import 'package:evsathi/screen/Auth/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      initialRoute: 'login',
      routes: {
        'login': (context) => const Login(),
      },
    );
  }
}
