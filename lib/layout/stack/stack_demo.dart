import 'package:flutter/material.dart';

///组件demo
class StackTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("层叠布局demo"),
      ),

      //通过ConstrainedBox来确保Stack占满屏幕
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),

        child: Stack(
          //指定未定位或部分定位widget的对齐方式
          alignment: Alignment.center,

          //未定位widget占满Stack整个空间
          fit: StackFit.expand,

          children: <Widget>[

            Container(
              child: Text(
                  "TW591",
                  style: TextStyle(color: Colors.pink),
              ),
              color: Colors.green,
            ),

            Positioned(
              left: 18,
              child: Text("HK591"),
            ),

            Positioned(
              top: 30,
              child: Text("8891"),
            ),

            Positioned(
              right: 30,
              child: Text("8591"),
            ),


          ],
        ),
      ),
    );
  }

}