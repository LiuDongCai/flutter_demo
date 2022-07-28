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

            ElevatedButton(
              child: Text("SingleChildScrollView"),
              onPressed: (){
                //SingleChildScrollView
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ScrollViewTestRoute();
                }));
              },
            ),

            ElevatedButton(
              child: Text("ListView"),
              onPressed: (){
                //SingleChildScrollView
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return InfiniteListView();
                }));
              },
            ),

            ElevatedButton(
              child: Text("GridView"),
              onPressed: (){
                //SingleChildScrollView
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return InfiniteGridView();
                }));
              },
            ),

            ElevatedButton(
              child: Text("CustomScrollView"),
              onPressed: (){
                //SingleChildScrollView
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return CustomScrollViewTestRoute();
                }));
              },
            ),

            ElevatedButton(
              child: Text("ScrollController"),
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