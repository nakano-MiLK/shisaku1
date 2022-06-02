import 'package:flutter/material.dart';
import 'package:shisaku1/search_result.dart';

void main() => runApp( MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  var titleText = 'Ad hoc communication between mobile devices during disasters';

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(titleText: titleText),
    );
  }
}

class Home extends StatelessWidget{
  final String titleText;
  // ignore: use_key_in_widget_constructors
  const Home({required this.titleText});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ad hoc communication between mobile devices during disasters',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: HomeButton(),
    );
  }
}

class HomeButton extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
            'Ad hoc communication between mobile devices during disasters'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: _screenSize.width * 0.6,
                height: _screenSize.height * 0.5,
                child: OutlinedButton.icon(
                  icon: const Icon(Icons.search),
                  label: const Text('Device Search'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SearchResult()),
                    );
                  },
                ),
              ),
            ]
        ),
      ),
    );
  }
}