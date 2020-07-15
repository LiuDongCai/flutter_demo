import 'package:flutter/material.dart';

///组件demo
class ScrollViewTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

    return Scaffold(
      appBar: AppBar(
        title: Text("SingleChildScrollView_demo"),
      ),
      body: Scrollbar(
        //Column的作用是将其所有子组件沿屏幕垂直方向依次排列
        child: SingleChildScrollView(
          
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              //动态创建一个List<Widget>
              children: str.split("")
              //每一个字母都用一个Text显示,字体为原来的两倍
                  .map((c) => Text(c, textScaleFactor: 2.0,))
                  .toList(),
            ),
          ),

        ),
      ),
    );
  }

}