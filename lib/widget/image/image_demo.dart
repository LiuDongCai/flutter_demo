import 'package:flutter/material.dart';

///组件demo
class ImageTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {


    String icons = "";
    // accessible: &#xE914; or 0xE914 or E914
    icons += "\uE914";
    // error: &#xE000; or 0xE000 or E000
    icons += " \uE000";
    // fingerprint: &#xE90D; or 0xE90D or E90D
    icons += " \uE90D";


    return Scaffold(
      appBar: AppBar(
        title: Text("图片demo"),
      ),
      body: Container(
        //Column的作用是将其所有子组件沿屏幕垂直方向依次排列
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Image(
              image: NetworkImage(
                "https://hp2.591.com.tw/house/active/2020/03/20/158469658245025804_300x200.crop.jpg"
              ),
            ),

            Image(
              image: NetworkImage(
                  "https://hp2.591.com.tw/house/active/2020/03/20/158469658245025804_300x200.crop.jpg",
              ),
              width: 200,
            ),
            
            Image.network(
              "https://hp2.591.com.tw/house/active/2020/03/20/158469658245025804_300x200.crop.jpg",
              width: 100,
              height: 100,
              fit: BoxFit.cover,),

            Image.network(
              "https://hp2.591.com.tw/house/active/2020/03/20/158469658245025804_300x200.crop.jpg",
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              color: Colors.blue,
              repeat: ImageRepeat.repeatY ,
              colorBlendMode: BlendMode.difference,),

            Text(icons,
              style: TextStyle(
                  fontFamily: "MaterialIcons",
                  fontSize: 24.0,
                  color: Colors.green
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.accessible,color: Colors.blue,),
                Icon(Icons.error,color: Colors.blue,),
                Icon(Icons.fingerprint,color: Colors.blue,),
              ],
            )

          ],
        ),
      ),
    );
  }

}