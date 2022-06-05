import 'package:flutter/material.dart';


class NewFile extends StatelessWidget{

  const NewFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Create New File'),
      ),
      body: Container(
        color: Colors.amber,
      ),
    );
  }
}