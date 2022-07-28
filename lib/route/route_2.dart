import 'package:flutter/material.dart';

///路由展示demo
class Router2Route extends StatelessWidget{

  final String? text;

  Router2Route({
    Key? key,
    @required this.text,
  }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("路由demo"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: [
              Text(text!),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context,"我是返回值");
                },
                child: Text("返回"),
              ),
            ],
          ),
        ),
      ),
    );
  }

}