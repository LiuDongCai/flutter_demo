import 'package:flutter/material.dart';


class MyCountNumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '计数器demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new CountNumPage(title: '计数器demo'),
    );
  }
}


class CountNumPage extends StatefulWidget {
  CountNumPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _CountNumState createState() => _CountNumState();
}

class _CountNumState extends State<CountNumPage> {
  int _counter = 0;

  void _incrementCounter() {
    //setState会通知Flutter框架状态发生变化
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    //Scaffold 是 Material 库中提供的页面脚手架，它提供了默认的导航栏、标题和包含主屏幕widget树（后同“组件树”或“部件树”）的body属性，组件树可以很复杂
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),

      //Center 可以将其子组件树对齐到屏幕中心
      body: Center(

        //Column的作用是将其所有子组件沿屏幕垂直方向依次排列
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have clicked the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),

      //floatingActionButton是页面右下角的带“+”的悬浮按钮
      floatingActionButton: FloatingActionButton(
        //onPressed属性接受一个回调函数，代表它被点击后的处理器
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
