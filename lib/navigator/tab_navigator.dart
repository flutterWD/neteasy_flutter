import 'package:chak/pages/home_page.dart';
import 'package:chak/pages/my_page.dart';
import 'package:chak/pages/search_page.dart';
import 'package:chak/pages/travel_page.dart';
import 'package:flutter/material.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => new _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  //  初始状态下设置 tab 为0
  final _controller = PageController(initialPage: 0);
  //  定义tab 选中和未选中的状态颜色
  final _defaultColor = Colors.grey;
  final _activeColor = Color(0xFFDA3E35);

  //  tab 选中索引
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          // 需要实现 首页 搜索页 旅拍 我页
          HomePage(),
          SearchPage(),
          TravelPage(),
          MyPage(),
        ],
      ),
      //  设置底部按钮
      bottomNavigationBar: Opacity(
        opacity: 0.8,
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            //  _controller 跳转至对应页面
            _controller.jumpToPage(index);
            //  state 更新
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.music_note, color: _defaultColor),
                activeIcon: Icon(Icons.music_note, color: _activeColor),
                title: Text(
                  '发现',
                  style: TextStyle(
                      color: _currentIndex != 0 ? _defaultColor : _activeColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call, color: _defaultColor),
                activeIcon: Icon(Icons.video_call, color: _activeColor),
                title: Text(
                  '视频',
                  style: TextStyle(
                      color: _currentIndex != 1 ? _defaultColor : _activeColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.queue_music, color: _defaultColor),
                activeIcon: Icon(Icons.queue_music, color: _activeColor),
                title: Text(
                  '我的',
                  style: TextStyle(
                      color: _currentIndex != 2 ? _defaultColor : _activeColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.group, color: _defaultColor),
                activeIcon: Icon(Icons.group, color: _activeColor),
                title: Text(
                  '朋友',
                  style: TextStyle(
                      color: _currentIndex != 3 ? _defaultColor : _activeColor),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle, color: _defaultColor),
                activeIcon: Icon(Icons.account_circle, color: _activeColor),
                title: Text(
                  '账号',
                  style: TextStyle(
                      color: _currentIndex != 4 ? _defaultColor : _activeColor),
                )),
          ],
        ),
      ),
    );
  }
}
