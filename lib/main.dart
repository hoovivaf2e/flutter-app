import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());  // main() 就是入口，回傳一個 widget， MyApp 就是啟動的介面。
}
// MyApp class 回傳一個 widget — MaterialApp，在 MaterialApp 中可以配置主題顏色、按鈕樣式等等。
// MaterialApp 是依照 Google Material Design 的設計風格，是 Android 的 ui 風格，
// iOS 可以使用 CupertinoApp，這部分可以自己修改。
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home 指定了啟動後要顯示的頁面
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
/*
* MyHomePage 就是啟動後顯示的第一個頁面，繼承 StatefulWidget。
* StatefulWidget 是一個有狀態的小部件(widget)。
* 如果頁面需要更新 ui，那麽該頁面就要繼承自 StatefulWidget；
* 如果只是一個純展示的頁面，就繼承自 StatelessWidget 即可。
* 這頁面有一個計數的功能，會更新 ui，所以需要繼承自 StatefulWidget。
*/
class MyHomePage extends StatefulWidget {
  // Dart 中的構造方法，{ } 裡的参數表示可選参數
  // this.title 會默認把值賦给下面的 title
  MyHomePage({Key key, this.title}) : super(key: key);
  // final 表示只能赋值一次，並且不能再修改
  final String title;
  /*
  * 所有繼承 StatefulWidget 的小部件都要重寫 createState()，
  * 可以理解為：該頁面的狀態是由「指定對象=>_MyHomePageState」來控制的。
  * _ (底線)開頭的變數和方法，默認為是私有的(private)，
  * 類似於 java 中的 private 關鍵字, 只能在class的内部調用。
  */
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
/*
* State 是一個狀態物件，< > 裡面是該狀態綁定的對象。
* 修改狀態時就是在該class中進行編寫。
* */
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  // 計數器
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
/*
* Scaffold 可以看作是 Material Design 中的一個模板，
* 它繼承自 StatefulWidget，包含了appBar,body,drawer等小部件
*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar 相當於 ToolBar
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // 中間的内容佈局
      body: Center(
        child: Column(
          // mainAxisAlignment: 主軸對準，可以把值設置為star, center, end
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      // 浮動按鈕
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
