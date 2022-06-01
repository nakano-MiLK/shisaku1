import 'package:flutter/material.dart';

final items = List<String>.generate(10000,(i) => "Item $i");

class SearchResult extends StatelessWidget{

  const SearchResult({Key? key, required this.items}) : super(key: key);
  final List<String> items;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Device Search Result'),
      ),
      body: ListView.builder(
        itemCount : items.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(items[index]),
          );
        }
      ),
    );
  }
}