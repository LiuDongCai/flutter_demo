import 'package:flutter/material.dart';
import 'package:flutterapp/function/inheritedwidget/InheritedWidgetTestRoute.dart';
import 'package:flutterapp/function/theme/ThemeTestRoute.dart';
import 'package:flutterapp/layout/align/align_demo.dart';
import 'package:flutterapp/layout/flex/flex_demo.dart';
import 'package:flutterapp/layout/row_colume/row_demo.dart';
import 'package:flutterapp/layout/stack/stack_demo.dart';
import 'package:flutterapp/layout/wrap_flow/wrap_demo.dart';

///组件demo
class FunctionTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("功能型组件demo"),
      ),
      body: Center(
        //Column的作用是将其所有子组件沿屏幕垂直方向依次排列
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            RaisedButton(
              child: Text("数据共享"),
              textColor: Colors.pink,
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return InheritedWidgetTestRoute();
                }));
              },
            ),

            RaisedButton(
              child: Text("颜色和主题"),
              textColor: Colors.pink,
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ThemeTestRoute();
                }));
              },
            ),

          ],
        ),
      ),
    );
  }

}