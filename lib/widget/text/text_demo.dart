import 'package:flutter/material.dart';

///组件demo
class TextTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("文本demo"),
      ),
      body: Container(
        //Column的作用是将其所有子组件沿屏幕垂直方向依次排列
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Text("Hello ADDCN",
            //文本的对齐方式；可以选择左对齐、右对齐还是居中
            textAlign: TextAlign.left,),

            Text("Hello ADDCN,I'm Liu~"*4,//字符串重复4次
            textAlign: TextAlign.left,
            //指定文本显示的最大行数  overflow来指定截断方式  ellipsis截断后以省略符“...”表示
            maxLines: 1,
            overflow: TextOverflow.ellipsis,),

            Text("Hello ADDCN,I'm LiuDongCai",
              //文本相对于当前字体大小的缩放因子 相对于去设置文本的样式style属性的fontSize，它是调整字体大小的一个快捷方式
              textScaleFactor: 1.5,),

            Text("Hello ADDCN,I'm LiuDongCai,I have a happy day",
              style: TextStyle(
                //TextStyle用于指定文本显示的样式如颜色、字体、粗细、背景等
                color: Colors.amber,
                //fontSize可以精确指定字体大小，而textScaleFactor只能通过缩放比例来控制
                //textScaleFactor主要是用于系统字体大小设置改变时对Flutter应用字体进行全局调整，而fontSize通常用于单个文本，字体大小不会跟随系统字体大小变化
                fontSize: 18,
                //该属性用于指定行高，但它并不是一个绝对值，而是一个因子，具体的行高等于fontSize*height
                height: 1.3,
                //字体   由于不同平台默认支持的字体集不同，所以在手动指定字体时一定要先在不同平台测试一下
                fontFamily: "Courier",
                //背景
                background: new Paint()..color = Colors.deepPurple,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.dashed,
              ),),

            Text.rich(TextSpan(
              children: [
                TextSpan(
                  text: "Hello"
                ),
                TextSpan(
                  text: "ADDCN",
                  style: TextStyle(
                    color: Colors.pink,
                  ),
                ),
                TextSpan(
                  text: "591",
                  style: TextStyle(
                      color: Colors.lightGreenAccent,
                      decoration: TextDecoration.underline,
                  ),
                ),
              ]
            )),

            DefaultTextStyle(
              style: TextStyle(
                color:Colors.red,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("我是老大，我继承了老爸的样式"),
                  Text("我是老二，我继承了老爸的样式"),
                  Text("我是老三，我不继承老爸的样式",
                  style: TextStyle(
                    inherit: false,
                    color: Colors.lime,
                  ),),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

}