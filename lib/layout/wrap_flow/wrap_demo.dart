import 'package:flutter/material.dart';

///组件demo
class FlowWrapTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("流式布局demo"),
      ),
      body: Container(
        //Column的作用是将其所有子组件沿屏幕垂直方向依次排列
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Wrap(
              // 主轴(水平)方向间距
              spacing: 8.0,
              // 纵轴（垂直）方向间距
              runSpacing: 4.0,
              //沿主轴方向居中
              alignment: WrapAlignment.start,

              children: <Widget>[

                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text("A"),
                  ),
                  label:  Text("TW591"),
                ),

                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text("B"),
                  ),
                  label:  Text("8891"),
                ),

                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text("C"),
                  ),
                  label:  Text("8591"),
                ),

                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text("D"),
                  ),
                  label:  Text("HK591"),
                ),

                Chip(
                  avatar: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text("D"),
                  ),
                  label:  Text("HK8591"),
                ),

              ],
            ),


          ],
        ),
      ),
    );
  }

}