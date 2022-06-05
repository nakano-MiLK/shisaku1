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
      home: const HomeButton(),
    );
  }
}

class HomeButton extends StatelessWidget{
  const HomeButton({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    final _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          centerTitle: true,
          title: Row(
            children:  [
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Container(),
                    Container(
                      padding: const EdgeInsets.all(3.0),
                      child: const Text(
                        "Ad hoc communication between mobile devices during disasters",
                        softWrap: true,
                        style: TextStyle(fontWeight: FontWeight.bold),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                    const Icon(Icons.help_outline),
                  ],
                )
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(          //device search
                width: _screenSize.width * 0.23,
                height: _screenSize.height * 0.2,
                child: Column(
                  children: [
                    SizedBox(
                      height: _screenSize.height * 0.06,
                      child: OutlinedButton.icon(
                        icon: const Icon(Icons.search),
                        label: const Text(''),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SearchResult()),
                          );
                        },
                      ),
                    ),
                    const Text('Device\nSearch'),
                  ],
                ),
              ),
              SizedBox(          //new file
                width: _screenSize.width * 0.23,
                height: _screenSize.height * 0.2,
                child: Column(
                  children: [
                    SizedBox(
                      height: _screenSize.height * 0.06,
                      child: OutlinedButton.icon(
                        icon: const Icon(Icons.upload_file),
                        label: const Text(''),
                        onPressed: () {},
                      ),
                    ),
                    const Text('New File'),
                  ],
                ),
              ),
              SizedBox(          //edit
                width: _screenSize.width * 0.23,
                height: _screenSize.height * 0.2,
                child: Column(
                  children: [
                    SizedBox(
                      height: _screenSize.height * 0.06,
                      child: OutlinedButton.icon(
                        icon: const Icon(Icons.edit_note),
                        label: const Text(''),
                        onPressed: () {},
                      ),
                    ),
                    const Text('Edit'),
                  ],
                ),
              ),
              SizedBox(          //history
                width: _screenSize.width * 0.23,
                height: _screenSize.height * 0.2,
                child: Column(
                  children: [
                    SizedBox(
                      height: _screenSize.height * 0.06,
                      child: OutlinedButton.icon(
                        icon: const Icon(Icons.history),
                        label: const Text(''),
                        onPressed: () {},
                      ),
                    ),
                    const Text(
                      'Transmission\nHistory',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ]
        ),
      ),
    );
  }
}