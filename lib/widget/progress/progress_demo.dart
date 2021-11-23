import 'package:flutter/material.dart';

///组件demo
class ProgressTestRoute extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return new _ProgressCheckBoxRouteState();
  }

}

class  _ProgressCheckBoxRouteState extends State<ProgressTestRoute> with SingleTickerProviderStateMixin{

  AnimationController? _animationController ;

  @override
  void initState() {
    //动画执行时间3秒
    _animationController = new AnimationController(vsync: this,duration: Duration(seconds: 3));
    _animationController?.forward();
    _animationController?.addListener(() {
      setState(() {

      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("进度条demo"),
      ),
      body: Center(
        //Column的作用是将其所有子组件沿屏幕垂直方向依次排列
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            LinearProgressIndicator(
              value: 0.2,
              valueColor: AlwaysStoppedAnimation(Colors.lightBlueAccent),
              backgroundColor: Colors.grey,
            ),


            Padding(
              padding: const EdgeInsets.only(top: 28.0),
              child: Column(
                children: [
                  CircularProgressIndicator(
                    value: 0.3,
                    valueColor: AlwaysStoppedAnimation(Colors.lightBlueAccent),
                    backgroundColor: Colors.grey,
                  ),

                  SizedBox(
                    height: 20,
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation(Colors.lightBlueAccent),
                      value: 0.3,
                    ),
                  ),

                  SizedBox(
                    height: 100,
                    width: 100,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation(Colors.lightBlueAccent),
                      value: .7,
                    ),
                  ),

                ],
              ),
            ),

          Padding(
            padding: EdgeInsets.all(16),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey[200],
              valueColor: ColorTween(begin: Colors.grey, end: Colors.blue)
                  .animate(_animationController!), // 从灰色变成蓝色
              value: _animationController?.value,
            ),
          ),


          ],
        ),
      ),
    );

  }
}