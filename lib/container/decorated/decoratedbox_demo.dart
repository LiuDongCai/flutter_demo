import 'package:flutter/material.dart';

///组件demo
class DecoratedBoxTestRoute extends StatelessWidget{

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
            DecoratedBox(
              decoration: BoxDecoration(
                //背景渐变
                gradient: LinearGradient(colors: [Colors.red,Colors.orange,Colors.red]),
                //圆角
                borderRadius: BorderRadius.circular(3.0),
                //阴影
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(2.0,2.0),
                    blurRadius: 4.0,
                  ),
                ],
              ),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 18),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),

            ),
          ],

        ),
      ),
    );
  }

}