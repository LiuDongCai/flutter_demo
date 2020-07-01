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
            RaisedButton(
              child: Text("漂浮按钮RaisedButton"),
              onPressed: (){},
            ),

            //默认背景透明并不带阴影。按下后，会有背景色
            FlatButton(
              child: Text("扁平按钮FlatButton"),
              onPressed: (){},
            ),

            //默认有一个边框，不带阴影且背景透明
            OutlineButton(
              child: Text("OutlineButton"),
              onPressed: (){},
            ),

            //默认有一个边框，不带阴影且背景透明
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: (){},
            ),

            RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.send), label: Text("漂浮按钮RaisedButton带图标")),

            FlatButton.icon(onPressed: (){}, icon: Icon(Icons.add), label: Text("扁平按钮FlatButton带图标")),

            OutlineButton.icon(onPressed: (){}, icon: Icon(Icons.info), label: Text("OutlineButton带图标")),

            RaisedButton(
              child: Text("自定义按钮"),
              color: Colors.blue,
              //按下去颜色
              highlightColor: Colors.blue[700],
              //指定按钮主题colorBrightness为Brightness.dark，这是为了保证按钮文字颜色为浅色
              colorBrightness: Brightness.dark,
              //水波纹颜色
              splashColor: Colors.grey,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              onPressed: (){},
            )

          ],
        ),
      ),
    );
  }

}