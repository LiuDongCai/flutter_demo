import 'package:flutter/material.dart';

///组件demo
class FlexTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("弹性布局demo"),
      ),
      body: Container(
        //Column的作用是将其所有子组件沿屏幕垂直方向依次排列
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            ////Flex的两个子widget按1：2来占据水平空间
            Flex(
              ////弹性布局的方向, Row默认为水平方向，Column默认为垂直方向
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30,
                    color: Colors.orange,
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Container(
                    height: 30,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                height: 100,
                child: Flex(
                  direction: Axis.vertical,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 30,
                        color: Colors.lightGreen,
                      ),
                    ),

                    Spacer(
                      flex: 1,
                    ),

                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 30,
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

}