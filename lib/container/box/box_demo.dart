import 'package:flutter/material.dart';

///组件demo
class BoxTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("尺寸限制容器demo"),
      ),
      body: Container(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: double.infinity,//宽度尽可能大
                minHeight: 100,//最小高度为50像素
              ),
              child: Container(
                height: 5,
                child:  Container(
                  color: Colors.red,
                ),
              ),
            ),

            SizedBox(
              width: 50,
              height: 100,
              child:  Container(
                color: Colors.purple,
              ),
            ),

            ConstrainedBox(
                constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
                  child: Container(
                    color: Colors.lightGreen,
                  ),
                )
            ),

            ConstrainedBox(
                constraints: BoxConstraints(minWidth: 60.0, minHeight: 100.0),  //父
                child: UnconstrainedBox( //“去除”父级限制
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),//子
                    child: Container(
                      color: Colors.yellow,
                    ),
                  ),
                )
            ),

          ],

        ),
      ),
    );
  }

}