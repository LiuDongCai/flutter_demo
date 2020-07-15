import 'package:flutter/material.dart';
import 'dart:math' as math;

///组件demo
class TransformTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("变换demo"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              color: Colors.black,
              child: Transform(
                //相对于坐标系原点的对齐方式
                alignment: Alignment.topRight,
                //沿Y轴倾斜0.3弧度   4D矩阵
                transform: Matrix4.skewY(0.5),

                child: new Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.deepOrange,
                  child: const Text('Hi TW591'),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: DecoratedBox(
                decoration:BoxDecoration(color: Colors.red),
                //默认原点为左上角，左移20像素，向上平移5像素
                child: Transform.translate(
                  offset: Offset(-20.0, -5.0),
                  child: Text("Hi TW591"),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: DecoratedBox(
                decoration:BoxDecoration(color: Colors.red),
                child: Transform.rotate(
                  //旋转90度
                  angle:math.pi/2 ,
                  child: Text("Hi TW591"),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: DecoratedBox(
                  decoration:BoxDecoration(color: Colors.red),
                  child: Transform.scale(
                      scale: 1.5, //放大到1.5倍
                      child: Text("Hello world")
                  )
              ),
            ),


          ],


        ),
      ),
    );
  }

}