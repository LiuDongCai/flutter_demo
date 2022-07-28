import 'package:flutter/material.dart';
import 'package:flutterapp/container/box/box_demo.dart';
import 'package:flutterapp/container/clip/clip_demo.dart';
import 'package:flutterapp/container/container/contain_demo.dart';
import 'package:flutterapp/container/decorated/decoratedbox_demo.dart';
import 'package:flutterapp/container/padding/padding_demo.dart';
import 'package:flutterapp/container/tab/tab_demo.dart';
import 'package:flutterapp/container/transform/transform_demo.dart';

///组件demo
class ContainerTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("容器组件demo"),
      ),
      body: Center(
        //Column的作用是将其所有子组件沿屏幕垂直方向依次排列
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ElevatedButton(
              child: Text("填充容器"),
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return PaddingTestRoute();
                }));
              },
            ),

            ElevatedButton(
              child: Text("尺寸限制容器"),
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return BoxTestRoute();
                }));
              },
            ),

            ElevatedButton(
              child: Text("装饰容器"),
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return DecoratedBoxTestRoute();
                }));
              },
            ),

            ElevatedButton(
              child: Text("变换"),
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return TransformTestRoute();
                }));
              },
            ),

            ElevatedButton(
              child: Text("Container"),
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ContainTestRoute();
                }));
              },
            ),

            ElevatedButton(
              child: Text("导航"),
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return TabTestRoute();
                }));
              },
            ),

            ElevatedButton(
              child: Text("裁剪"),
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ClipTestRoute();
                }));
              },
            ),


          ],
        ),
      ),
    );
  }

}