import 'package:flutter/material.dart';

///组件demo
class AlignTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("弹性布局demo"),
      ),
      body: Container(

//        width: 120.0,
//        height: 120.0,

        color: Colors.blue[50],

        //Align 组件可以调整子组件的位置，并且可以根据子组件的宽高来确定自身的的宽高
        child: Align(
//          alignment: Alignment.topRight,
//          alignment: Alignment(2,0),
          alignment: FractionalOffset(0.2, 0.6),

          //FlutterLogo的宽高为60，则Align的最终宽高都为2*60=120
          widthFactor: 2,
          heightFactor: 2,

          child: FlutterLogo(
            size: 60,
          ),
        ),
      ),
    );
  }

}