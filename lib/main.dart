import 'package:flutter/material.dart';
import 'package:mydemo4_vazifa/Pages/Detial/detial_page.dart';
import 'package:mydemo4_vazifa/Pages/Home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Homepage(),
      //   routes: {
      //     '/detialpage': (context) => const DetialPage(
      //           age: 21,
      //           name: 'Dart',
      //         ),
      //     '/homepage': (context) => const Homepage()
      //   },
      //   initialRoute: Homepage.route,
    );
  }
}
