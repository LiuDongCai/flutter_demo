import 'package:flutter/material.dart';

///组件demo
class ButtonTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮demo"),
      ),
      body: Center(
        //Column的作用是将其所有子组件沿屏幕垂直方向依次排列
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            //默认带有阴影和灰色背景
            ElevatedButton(
              child: Text("漂浮按钮ElevatedButton"),
              onPressed: (){},
            ),

            //默认背景透明并不带阴影。按下后，会有背景色
            TextButton(
              child: Text("扁平按钮FlatButton"),
              onPressed: (){},
            ),

            //默认有一个边框，不带阴影且背景透明
            OutlinedButton(
              child: Text("OutlinedButton"),
              onPressed: (){},
            ),

            //默认有一个边框，不带阴影且背景透明
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: (){},
            ),

            ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.send), label: Text("漂浮按钮ElevatedButton带图标")),

            TextButton.icon(onPressed: (){}, icon: Icon(Icons.add), label: Text("扁平按钮TextButton带图标")),

            OutlinedButton.icon(onPressed: (){}, icon: Icon(Icons.info), label: Text("OutlinedButton带图标")),

          ],
        ),
      ),
    );
  }

}