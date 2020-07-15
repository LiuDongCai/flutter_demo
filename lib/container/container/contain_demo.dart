import 'package:flutter/material.dart';

///组件demo
class ContainTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container_demo"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              margin: EdgeInsets.only(top: 50,left: 120),
              constraints: BoxConstraints.tightFor(width: 200,height: 150),
              decoration: BoxDecoration(//背景装饰
                  gradient: RadialGradient( //背景径向渐变
                      colors: [Colors.red, Colors.orange],
                      center: Alignment.topLeft,
                      radius: .98
                  ),
                  boxShadow: [ //卡片阴影
                    BoxShadow(
                        color: Colors.black54,
                        offset: Offset(2.0, 2.0),
                        blurRadius: 4.0
                    )
                  ]
              ),
              transform: Matrix4.rotationZ(0.2),
              alignment: Alignment.center,
              child: Text(
                "5.20",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
            ),


          ],


        ),
      ),
    );
  }

}