import 'package:flutter/material.dart';

///组件demo
class TextFieldTestRoute extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表单demo"),
      ),
      body: Container(
        //Column的作用是将其所有子组件沿屏幕垂直方向依次排列
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            TextField(
              //自动获取焦点
              autofocus: true,
              //输入框默认的键盘输入类型
              keyboardType:TextInputType.text,
              //键盘动作按钮图标(即回车键位图标)
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: "用户名",
                hintText: "请输入用户名或邮箱",
                prefixIcon: Icon(Icons.person),
              ),
            ),

            TextField(
              //输入框默认的键盘输入类型
              keyboardType:TextInputType.number,
              decoration: InputDecoration(
                labelText: "密码",
                hintText: "请输入密码",
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),

          ],
        ),
      ),
    );
  }

}

class FormFieldTestRoute extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return new _FormTestRouteState();
  }

}

class _FormTestRouteState  extends State<FormFieldTestRoute>{

  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController  = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("表单demo"),
      ),
      body: Container(

        padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 16.0),

        child: Form(
          //设置globalKey，用于后面获取FormState
          key: _formKey,
          //开启自动校验
          // autovalidate: true,

          //Column的作用是将其所有子组件沿屏幕垂直方向依次排列
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: <Widget>[

              TextFormField(
                //自动获取焦点
                autofocus: true,
                //控制器
                controller: _unameController,
                //输入框默认的键盘输入类型
                keyboardType:TextInputType.text,
                //键盘动作按钮图标(即回车键位图标)
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "请输入用户名或邮箱",
                  prefixIcon: Icon(Icons.person),
                ),
                //校验用户名
                validator: (v){
                  return v!.trim().length>0 ? null : "用户名或邮箱不能为空";
                },
              ),

              TextFormField(
                //控制器
                controller: _pwdController,
                //输入框默认的键盘输入类型
                keyboardType:TextInputType.number,
                decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "请输入密码",
                  prefixIcon: Icon(Icons.lock),
                ),
                //密码
                obscureText: true,
                //校验密码
                validator: (v){
                  return v!.trim().length>5 ? null : "密码不能少于6位";
                },
              ),

              //登录按钮
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.all(15.0),
                        child: Text("登录"),
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: (){
                          //在这里不能通过此方式获取FormState，context不对
                          //print(Form.of(context));

                          // 通过_formKey.currentState 获取FormState后，
                          // 调用validate()方法校验用户名密码是否合法，校验
                          // 通过后再提交数据。
                          if((_formKey.currentState as FormState).validate()){
                            //验证通过提交数据
                          }
                        },
                      ),
                    ),
                  ],
                ),
              )

            ],
          ),
        ),

      ),
    );

  }
}