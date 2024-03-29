import 'package:flutter/material.dart';
import 'package:shisaku1/help.dart';
import 'package:shisaku1/search_result.dart';
import 'package:shisaku1/new_file.dart';
import 'package:shisaku1/file_list.dart';
import 'package:shisaku1/history.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
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
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:  [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:  [
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      child: const Text(
                        "Ad hoc communication between mobile devices during disasters",
                        softWrap: true,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                )
              ),
              OutlinedButton.icon(
                icon: const Icon(
                  Icons.help_outline,
                  color: Colors.black,
                ),
                label: const Text(
                  'Help',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Help()),
                  );
                },
              ),
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
                        onPressed: () async {
                          final result = await Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const NewFile();
                              },
                            ),
                          );
                          if (result != null){
                            const contentText = 'New File Add to "Edit"';
                            showDialog(
                              context: context, 
                              builder: (context){
                                return const AlertDialog(
                                  content: Text(contentText),
                                );
                              }
                            );
                          }
                        },
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const FileList()),
                          );
                        },
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
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const History())
                          );
                        },
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