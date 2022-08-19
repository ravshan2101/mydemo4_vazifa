import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mydemo4_vazifa/Pages/Detial/detial_page.dart';

class Homepage extends StatefulWidget {
  static const String route = '/homepage';
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String? data = "Button Two";

  Future _openDetialPage() async {
    Map results = await Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return const DetialPage(
        name: "Flutter",
        age: 22,
      );
    }));

    if (results.containsKey('data')) {
      setState(() {
        data = results['data'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Home Page")),
        body: Center(
          child: MaterialButton(
            onPressed: (() {
              _openDetialPage();
              //Navigator.of(context).pushNamed(DetialPage.route);
            }),
            color: Colors.red,
            child: Text(data!),
          ),
        ));
  }
}
