import 'package:flutter/material.dart';
import 'package:flutterapp/layout/layout_demo.dart';
import 'file:///D:/flutter/flutter_app/lib/count/count_num_demo.dart';
import 'package:flutterapp/route/route_2.dart';
import 'package:flutterapp/route/route_demo.dart';
import 'package:flutterapp/widget/widget_demo.dart';

void main() {
  //应用入口
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // MyApp()是Flutter应用的根组件
  @override
  Widget build(BuildContext context) {
    //build()方法来描述如何构建UI界面（通常是通过组合、拼装其它基础widget）

    //MaterialApp 是Material库中提供的Flutter APP框架，通过它可以设置应用的名称、主题、语言、首页及路由列表等。MaterialApp也是一个widget
    return MaterialApp(
      title: 'ADDCN591',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      //home 为Flutter应用的首页，它也是一个widget
//      home: MyHomePage(title: '首页'),

      //注册理由表
      routes: {
        "route_page":(context) => RouterTestRoute(),
        "widget_page":(context) => WidgetTestRoute(),
        "layout_page":(context) => LayoutTestRoute(),
        "/":(context) => MyHomePage(title: 'ADDCN591'), //注册首页路由

        "tip2": (context){
          return Router2Route(text: ModalRoute.of(context).settings.arguments);
        },
      },


    );
  }
}

///MyHomePage 是Flutter应用的首页
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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

            RaisedButton(
              child: Text("计数器demo"),
              textColor: Colors.red,
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return MyCountNumPage();
                }));
              },
            ),

            RaisedButton(
              child: Text("路由demo"),
              textColor: Colors.green,
              onPressed: (){
                //点击事件,跳转路由界面
//                Navigator.push(context, MaterialPageRoute(builder: (context){
//                  return RouterTestRoute();
//                }));
                //命名路由
                Navigator.pushNamed(context, "route_page");
              },
            ),

            RaisedButton(
              child: Text("基础组件demo"),
              textColor: Colors.blue,
              onPressed: (){
                //点击事件,跳转路由界面
//                Navigator.push(context, MaterialPageRoute(builder: (context){
//                  return RouterTestRoute();
//                }));
                //命名路由
                Navigator.pushNamed(context, "widget_page");
              },
            ),

            RaisedButton(
              child: Text("布局组件demo"),
              textColor: Colors.blue,
              onPressed: (){
                //点击事件,跳转路由界面
//                Navigator.push(context, MaterialPageRoute(builder: (context){
//                  return RouterTestRoute();
//                }));
                //命名路由
                Navigator.pushNamed(context, "layout_page");
              },
            ),


          ],
        ),
      ),

    );
  }
}
