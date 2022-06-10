import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:webview_flutter/webview_flutter.dart';

///WebView展示demo
class WebViewTestRoute extends StatefulWidget {
  const WebViewTestRoute({Key? key}) : super(key: key);

  @override
  State<WebViewTestRoute> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewTestRoute> {
  late WebViewController _webViewController;
  String filePath = 'assets/html/index.html';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("路由demo"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              if (_webViewController != null) {
                _webViewController
                    .runJavascriptReturningResult(
                        "flutterCallJsMethod('Flutter调用了JS，点击确定收到返回值并Toast')")
                    .then((value) {
                  Fluttertoast.showToast(msg: value.toString());
                });
              }
            },
            child: Text("点击Flutter调用JS有返回值"),
          ),
          ElevatedButton(
            onPressed: () {
              if (_webViewController != null) {
                _webViewController.runJavascript(
                    "flutterCallJsMethodNoResult('Flutter调用了JS')");
              }
            },
            child: Text("点击Flutter调用JS无返回值"),
          ),
          Expanded(
            child: WebView(
                initialUrl: '',
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController webViewController) {
                  _webViewController = webViewController;
                  _loadHtmlFromAssets();
                },
                javascriptChannels: {
                  JavascriptChannel(
                      name: "toast",
                      onMessageReceived: (message) {
                        String result = message.message;
                        Fluttertoast.showToast(msg: result);
                      }),
                },
                onPageFinished: (url) async {}),
          ),
        ],
      ),
    );
  }

  ///记载本地html
  _loadHtmlFromAssets() async {
    String fileHtmlContent = await rootBundle.loadString(filePath);
    _webViewController.loadHtmlString(fileHtmlContent);
  }
}
