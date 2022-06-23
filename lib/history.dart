import 'package:flutter/material.dart';


class History extends StatelessWidget{

  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Transmission History!!!!'),
      ),
      body: Container(
        color: Colors.deepPurpleAccent,
      ),
    );
  }
}