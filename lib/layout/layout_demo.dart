import 'package:flutter/material.dart';
import 'package:flutterapp/layout/align/align_demo.dart';
import 'package:flutterapp/layout/flex/flex_demo.dart';
import 'package:flutterapp/layout/row_colume/row_demo.dart';
import 'package:flutterapp/layout/stack/stack_demo.dart';
import 'package:flutterapp/layout/wrap_flow/wrap_demo.dart';

///组件demo
class LayoutTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("布局组件demo"),
      ),
      body: Center(
        //Column的作用是将其所有子组件沿屏幕垂直方向依次排列
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            RaisedButton(
              child: Text("线性布局"),
              textColor: Colors.brown,
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return RowColumnTestRoute();
                }));
              },
            ),

            RaisedButton(
              child: Text("弹性布局"),
              textColor: Colors.brown,
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return FlexTestRoute();
                }));
              },
            ),

            RaisedButton(
              child: Text("流式布局"),
              textColor: Colors.brown,
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return FlowWrapTestRoute();
                }));
              },
            ),

            RaisedButton(
              child: Text("层叠布局"),
              textColor: Colors.brown,
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return StackTestRoute();
                }));
              },
            ),

            RaisedButton(
              child: Text("对齐与相对定位"),
              textColor: Colors.brown,
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return AlignTestRoute();
                }));
              },
            ),


          ],
        ),
      ),
    );
  }

}