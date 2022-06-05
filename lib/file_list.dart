import 'package:flutter/material.dart';


class FileList extends StatelessWidget{

  const FileList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('File List'),
      ),
      body: Container(
        color: Colors.black12,
      ),
    );
  }
}