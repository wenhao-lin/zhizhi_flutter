import 'package:flutter/material.dart';
import '../home/ask_page.dart';
import '../home/search_page.dart';
import 'navigation_icon_view.dart';
import '../global_config.dart';
import '../home/home_page.dart';
import '../notice/notice_page.dart';
import '../my/my_page.dart';

class Index extends StatefulWidget {

  @override
  State<Index> createState() => new _IndexState();
}

class _IndexState extends State<Index> with TickerProviderStateMixin{

  int _currentIndex = 0;
  late List<NavigationIconView> _navigationViews;
  late List<StatefulWidget> _pageList;
  late StatefulWidget _currentPage;

  @override
  void initState() {
    super.initState();
    _navigationViews = <NavigationIconView>[
      new NavigationIconView(
        icon: new Icon(Icons.assignment),
        title: "首页",
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.search),
        title: "搜索",
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.add),
        title: "提问",
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.add_alert),
        title: "通知",
        vsync: this,
      ),
      new NavigationIconView(
        icon: new Icon(Icons.perm_identity),
        title: "我的",
        vsync: this,
      ),
    ];
    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }

    _pageList = <StatefulWidget>[
      new HomePage(),
      new SearchPage(),
      new AskPage(),
      new NoticePage(),
      new MyPage()
    ];
    _currentPage = _pageList[_currentIndex];
  }

  void _rebuild() {
    setState((){});
  }

  @override
  void dispose() {
    super.dispose();
    for (NavigationIconView view in _navigationViews) {
      view.controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
        items: _navigationViews
            .map((NavigationIconView navigationIconView) => navigationIconView.item)
            .toList(),
      currentIndex: _currentIndex,
      fixedColor: Colors.blue,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState((){
          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          _navigationViews[_currentIndex].controller.forward();
          _currentPage = _pageList[_currentIndex];
        });
      }
    );

    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
            child: _currentPage
        ),
        bottomNavigationBar: bottomNavigationBar,
      ),
      theme: GlobalConfig.themeData,
      debugShowCheckedModeBanner: false,
    );
  }

}