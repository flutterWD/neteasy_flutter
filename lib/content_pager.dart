import 'package:flutter/material.dart';
import 'package:neteasy_flutter/custom_appbar.dart';

class ContentPager extends StatefulWidget {
  final ValueChanged<int> onPageChanged;
  final ContentPagerController contentPagerController;
  const ContentPager({Key key, this.onPageChanged, this.contentPagerController})
      : super(key: key);

  @override
  _ContentPagerState createState() => new _ContentPagerState();
}

class _ContentPagerState extends State<ContentPager> {
  PageController _pageController = PageController(viewportFraction: 0.8);
  static List<Color> _colors = [
    Colors.blue,
    Colors.red,
    Colors.orange,
    Colors.pink
  ];
  @override
  void initState() {
    if (widget.contentPagerController != null) {
      widget.contentPagerController._pageController = _pageController;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // appBar
        CustomAppBar(),
        Expanded(
          child: PageView(
            //  widget就表示是ContentPager这个widget
            onPageChanged: widget.onPageChanged,
            controller: _pageController,
            children: <Widget>[
              _wrapItem(0),
              _wrapItem(1),
              _wrapItem(2),
              _wrapItem(3),
            ],
          ),
        )
      ],
    );
  }

  Widget _wrapItem(int index) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(color: _colors[index]),
      ),
    );
  }
}

///内容区域的控制器
class ContentPagerController {
  PageController _pageController;

  void jumpToPage(int page) {
    _pageController?.jumpToPage(page);
  }
}
