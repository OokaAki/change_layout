import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 画面に表示する数字
  int _counter = 0;

  // ＋ボタンがタップされた時に呼び出される
  void _incrementCounter() {
    // _counterに1足してる
    setState(() {
      _counter++;
    });
  }

  // 画面描画を書いているところ
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ここで背景色を指定
      backgroundColor: Colors.pink[100],

      // 一番上のタイトルが表示されているところ
      appBar: AppBar(
        title: Text(widget.title),
      ),

      // 画面のメインの部分
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 画面上半分の
            const Expanded(
              flex: 1,
              // 真ん中に位置させる
              child: Align(
                alignment: Alignment.center,
                // 文字を表示する
                child: Text(
                  'You have pushed the button this many times:',
                  // テキストのスタイルを指定できる
                  style: TextStyle(
                    // 大きさを30に指定
                    fontSize: 30,
                  ),
                ),
              ),
            ),

            // 画面下半分の
            Expanded(
              flex: 1,
              // 真ん中に位置させる
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  // カウントアップされた数字を表示する
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ),
          ],
        ),
      ),

      // 右下の丸いボタン
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
