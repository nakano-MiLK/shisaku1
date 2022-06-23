import 'package:flutter/material.dart';
import 'package:shisaku1/new_file.dart';


class FileList extends StatelessWidget{

  const FileList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('File List'),
      ),
      body: FileListPage(),
    );
  }
}

class FileListPage extends StatefulWidget{
  FileListPage(this.text);
  const FileListPage(String text, {Key? key}) : super(key: key);

  @override
  _FileListPageState createState() => _FileListPageState();
}

class _FileListPageState extends State<FileListPage>{
  List<String> fileList = [text];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // データを元にListViewを作成
      body: ListView.builder(
        itemCount: fileList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(fileList[index]),
            ),
          );
        },
      ),
    );
  }
}