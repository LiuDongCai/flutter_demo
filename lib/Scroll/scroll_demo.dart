import 'package:flutter/material.dart';
import 'package:flutterapp/Scroll/customview/customscrollview_demo.dart';
import 'package:flutterapp/Scroll/gridview/gridview_demo.dart';
import 'package:flutterapp/Scroll/listview/listview_demo.dart';
import 'package:flutterapp/Scroll/scrolcontroller/controller_demo.dart';
import 'package:flutterapp/Scroll/scrollview/scrollview_demo.dart';

///组件demo
class ScrollTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("可滚动demo"),
      ),
      body: Center(
        //Column的作用是将其所有子组件沿屏幕垂直方向依次排列
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            RaisedButton(
              child: Text("SingleChildScrollView"),
              textColor: Colors.orange,
              onPressed: (){
                //SingleChildScrollView
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ScrollViewTestRoute();
                }));
              },
            ),

            RaisedButton(
              child: Text("ListView"),
              textColor: Colors.orange,
              onPressed: (){
                //SingleChildScrollView
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return InfiniteListView();
                }));
              },
            ),

            RaisedButton(
              child: Text("GridView"),
              textColor: Colors.orange,
              onPressed: (){
                //SingleChildScrollView
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return InfiniteGridView();
                }));
              },
            ),

            RaisedButton(
              child: Text("CustomScrollView"),
              textColor: Colors.orange,
              onPressed: (){
                //SingleChildScrollView
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return CustomScrollViewTestRoute();
                }));
              },
            ),

            RaisedButton(
              child: Text("ScrollController"),
              textColor: Colors.orange,
              onPressed: (){
                //SingleChildScrollView
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ScrollControllerTestRoute();
                }));
              },
            ),

          ],
        ),
      ),
    );
  }

}