import 'package:flutter/material.dart';



class SearchResult extends StatelessWidget{

  SearchResult({Key? key}) : super(key: key);
  final items = List<String>.generate(10000,(i) => "Device $i");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Device Search Result'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount : items.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text(items[index]),
            );
          }
        ),
      ),
    );
  }
}