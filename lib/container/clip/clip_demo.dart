import 'package:flutter/material.dart';

///组件demo
class ClipTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    Widget avatar = Image.network(
      "https://hp2.591.com.tw/house/active/2020/03/20/158469658245025804_300x200.crop.jpg",
      width: 100,
      height: 100,
      fit: BoxFit.cover,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("裁剪demo"),
      ),
      body: Container(
        //Column的作用是将其所有子组件沿屏幕垂直方向依次排列
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            avatar, //不剪裁
            ClipOval(child: avatar), //剪裁为圆形
            ClipRRect( //剪裁为圆角矩形
              borderRadius: BorderRadius.circular(5.0),
              child: avatar,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  widthFactor: .5,//宽度设为原来宽度一半，另一半会溢出
                  child: avatar,
                ),
                Text("你好世界", style: TextStyle(color: Colors.green),)
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipRect(//将溢出部分剪裁
                  child: Align(
                    alignment: Alignment.topLeft,
                    widthFactor: .5,//宽度设为原来宽度一半
                    child: avatar,
                  ),
                ),
                Text("你好世界",style: TextStyle(color: Colors.green))
              ],
            ),


          ],
        ),
      ),
    );
  }

}