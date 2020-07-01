import 'package:flutter/material.dart';

///组件demo
class RowColumnTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("线性布局demo"),
      ),
      body: Container(
        //Column的作用是将其所有子组件沿屏幕垂直方向依次排列
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(" Text1~ "),
                Text(" Text2~ "),
                Text(" Text3~ "),
              ],
            ),

            Row(
              //MainAxisSize.max，表示尽可能多的占用水平方向的空间   MainAxisSize.min表示尽可能少的占用水平空间
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(" Text1~ "),
                Text(" Text2~ "),
                Text(" Text3~ "),
              ],
            ),

            Row(
              //MainAxisSize.max，表示尽可能多的占用水平方向的空间   MainAxisSize.min表示尽可能少的占用水平空间
              mainAxisSize: MainAxisSize.max,
              //如果mainAxisSize值为MainAxisSize.min，则此属性无意义
              mainAxisAlignment: MainAxisAlignment.end,
//              //从右对齐
//              textDirection: TextDirection.rtl,
              children: <Widget>[
                Text(" Text1~ "),
                Text(" Text2~ "),
                Text(" Text3~ "),
              ],
            ),

            Row(
              //MainAxisSize.max，表示尽可能多的占用水平方向的空间   MainAxisSize.min表示尽可能少的占用水平空间
              mainAxisSize: MainAxisSize.max,
              //如果mainAxisSize值为MainAxisSize.min，则此属性无意义
              mainAxisAlignment: MainAxisAlignment.start,
              //从右对齐
              verticalDirection: VerticalDirection.up,
              children: <Widget>[
                Text(" Text1~ "),
                Text(" Text2~ ",
                  style: TextStyle(
                    fontSize: 30.0,
                ),),
                Text(" Text3~ "),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(" Text1~ "),
                  Text(" Text2~ "),
                  Text(" Text3~ "),
                ],
              ),
            )


          ],
        ),
      ),
    );
  }

}