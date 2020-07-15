import 'package:flutter/material.dart';

///组件demo
class PaddingTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("填充容器demo"),
      ),
      body: Padding(
        //上下左右各添加16像素补白   all(double value) : 所有方向均使用相同数值的填充。
        padding: const EdgeInsets.all(16.0),

        child: Column(
          ////显式指定对齐方式为左对齐，排除对齐干扰
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Padding(
              //only({left, top, right ,bottom })：可以设置具体某个方向的填充(可以同时指定多个方向)。
              padding: const EdgeInsets.only(left: 18),
              child: Text("TW591"),
            ),

            Padding(
              //symmetric用于设置对称方向的填充，vertical指top和bottom，horizontal指left和right
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Text("HK591"),
            ),

            Padding(
              //fromLTRB(double left, double top, double right, double bottom)：分别指定四个方向的填充
              padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,20.0),
              child: Text("TW8591"),
            ),

          ],

        ),
      ),
    );
  }

}