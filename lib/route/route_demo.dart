import 'package:flutter/material.dart';

///路由展示demo
class RouterTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("路由demo"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async{
            //点击事件  打开一个路由页，并等待返回结果
//            var result = await Navigator.push(
//                context,
//                MaterialPageRoute(
//                    builder: (context){
//                       return Router2Route(
//                         //路由参数
//                         text: "我是提示xxxx",
//                       );
//                    },
//                ),
//            );

            Navigator.of(context).pushNamed("tip2", arguments: "hi");

            //输出返回结果
//            print("结果：路由返回值:$result");
          },
          child: Text("打开提示页"),
        ),
      ),
    );
  }

}