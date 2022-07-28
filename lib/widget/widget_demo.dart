import 'package:flutter/material.dart';
import 'package:flutterapp/widget/button/button_demo.dart';
import 'package:flutterapp/widget/form/form_demo.dart';
import 'package:flutterapp/widget/image/image_demo.dart';
import 'package:flutterapp/widget/progress/progress_demo.dart';
import 'package:flutterapp/widget/switch/switch_demo.dart';
import 'package:flutterapp/widget/text/text_demo.dart';

///组件demo
class WidgetTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("基础组件demo"),
      ),
      body: Center(
        //Column的作用是将其所有子组件沿屏幕垂直方向依次排列
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ElevatedButton(
              child: Text("文本"),
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return TextTestRoute();
                }));
              },
            ),

            ElevatedButton(
              child: Text("按钮"),
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ButtonTestRoute();
                }));
              },
            ),

            ElevatedButton(
              child: Text("图片"),
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ImageTestRoute();
                }));
              },
            ),

            ElevatedButton(
              child: Text("单选框/复选框"),
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SwitchTestRoute();
                }));
              },
            ),

            ElevatedButton(
              child: Text("输入框/表单"),
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return FormFieldTestRoute();
                }));
              },
            ),

            ElevatedButton(
              child: Text("进度条"),
              onPressed: (){
                //点击事件,跳转计数器
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return ProgressTestRoute();
                }));
              },
            ),

          ],
        ),
      ),
    );
  }

}