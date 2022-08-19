import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetialPage extends StatefulWidget {
  static const String route = '/detialpage';
  final String? name;
  final int? age;
  const DetialPage({super.key, required this.name, this.age});

  @override
  State<DetialPage> createState() => _DetialPageState();
}

class _DetialPageState extends State<DetialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Detial Page"),
        ),
        body: Center(
          child: MaterialButton(
            onPressed: () {
              Navigator.of(context).pop({'data': "Dart 33"});
            },
            color: Colors.red,
            child: (Text(" ${widget.name} ${widget.age.toString()}")),
          ),
        ));
  }
}
