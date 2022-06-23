import 'package:flutter/material.dart';
import 'package:shisaku1/file_list.dart';


class NewFile extends StatefulWidget {
  const NewFile({Key? key}) : super(key: key);

  @override
  _NewFileState createState() => _NewFileState();
}


//NextPage
class _NewFileState extends State<NewFile> {

  late final String inputValue;
  // データを宣言
  final String _text = '';
  String value2 = '' ;
  // データを元にWidgetを作る
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('New File'),
      ),
      body: Container(
        // 余白を付ける
        padding: const EdgeInsets.all(64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            //--------------------------------------------------------------------------katayama------------------------------------------------------------------------------------------

            TextField(
              onChanged: (value){
                inputValue = value;
              },
              onEditingComplete: (){
                Navigator.of(context).pop(inputValue);
              },
            ),


            //-------------------------------------------------------------------------------------------------------------------------------------------------------------


            const SizedBox(height: 8),
            SizedBox(
              // 横幅いっぱいに広げる
              width: double.infinity,
              // リスト追加ボタン
              child: ElevatedButton(
                onPressed: () {
                  // "pop"で前の画面に戻る
                  // "pop"の引数から前の画面にデータを渡す
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      //settings: RouteSettings(name: _text),
                      builder: (BuildContext context) => FileListPage(_text)),
                  );
                },
                child: const Text(
                  'リスト追加',
                  style: TextStyle(color: Colors.white)
                ),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              // 横幅いっぱいに広げる
              width: double.infinity,
              // キャンセルボタン
              child: TextButton(
                // ボタンをクリックした時の処理
                onPressed: () {
                  // "pop"で前の画面に戻る
                  Navigator.of(context).pop();
                },
                child: const Text('キャンセル'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}