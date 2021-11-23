import 'package:flutter/material.dart';

///组件demo
class SwitchTestRoute extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return new _SwitchCheckBoxRouteState();
  }

}

class  _SwitchCheckBoxRouteState extends State<SwitchTestRoute>{

  bool _switchSelected = true;//维护单选开关状态
  bool _checkboxSelected = true;//维护复选框状态

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("单选框/复选框demo"),
      ),
      body: Center(
        //Column的作用是将其所有子组件沿屏幕垂直方向依次排列
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Switch(
                value: _switchSelected,
                onChanged: (value){
                  //重新构建页面
                  setState(() {
                    _switchSelected = value;
                  });
                }),

            Checkbox(
                value: _checkboxSelected,
                activeColor: Colors.red,
                onChanged: (value){
                  //重新构建页面
                  setState(() {
                    _checkboxSelected = value!;
                  });
                }),

          ],
        ),
      ),
    );

  }
}