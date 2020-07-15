import 'package:flutter/material.dart';

///组件demo
class TabTestRoute extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return new _TabRouteState();
  }

}

class  _TabRouteState extends State<TabTestRoute> with SingleTickerProviderStateMixin{

  int _selectedIndex = 0;

  TabController _tabController; //需要定义一个Controller
  List tabs = ["科技", "军事", "娱乐", "体育"];

  @override
  void initState(){
    // 创建Controller
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("导航栏demo"),

        //导航栏右侧菜单
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: (){},
          )
        ],

        leading: Builder(
          builder: (context){
            return IconButton(
              icon: Icon(Icons.dashboard,color: Colors.white,),
              onPressed: (){
                //打开抽屉
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),

        bottom: TabBar(   //生成Tab菜单
            controller: _tabController,
            tabs: tabs.map((e) => Tab(text: e)).toList()
        ),

      ),

      //抽屉
      drawer: MyDrawer(),

      //底部导航
//      bottomNavigationBar: BottomNavigationBar(
//        items: <BottomNavigationBarItem>[
//
//          BottomNavigationBarItem(
//            icon: Icon(Icons.home),title: Text("首页"),
//          ),
//
//          BottomNavigationBarItem(
//            icon: Icon(Icons.search),title: Text("搜索"),
//          ),
//
//          BottomNavigationBarItem(
//            icon: Icon(Icons.image_aspect_ratio),title: Text("新闻"),
//          ),
//
//          BottomNavigationBarItem(
//            icon: Icon(Icons.person),title: Text("我的"),
//          ),
//
//        ],
//
//        currentIndex: _selectedIndex,
//        unselectedItemColor: Colors.grey,
//        selectedItemColor: Colors.orange,
//        onTap: _onItemTapped,
//
//      ),

      bottomNavigationBar: BottomAppBar(
        // // 底部导航栏打一个圆形的洞
        shape: CircularNotchedRectangle(),
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.home)),
            SizedBox(), //中间位置空出
            IconButton(icon: Icon(Icons.business)),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
        ),

      ),

      //悬浮按钮
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      //打洞位置在底部导航栏的正中间
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: TabBarView(
        controller: _tabController,
        children: tabs.map((e) { //创建3个Tab页
          return Container(
            alignment: Alignment.center,
            child: Text(e, textScaleFactor: 5),
          );
        }).toList(),
      ),

    );

  }

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

}

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        //移除抽屉菜单顶部默认留白
        removeTop: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 38.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ClipOval(
                      child: Image.asset(
                        "imgs/avatar.png",
                        width: 80,
                      ),
                    ),
                  ),
                  Text(
                    "Wendux",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.add),
                    title: const Text('Add account'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Manage accounts'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}