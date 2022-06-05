import 'package:flutter/material.dart';

class Help extends StatelessWidget{

  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('What Is This Application'),
      ),
      body: Container(
        child: const Text('Help'),
      ),
    );
  }

}