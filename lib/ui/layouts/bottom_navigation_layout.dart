import 'package:flutter/material.dart';

class BottomNavigationLayout extends StatefulWidget {
  final List<BottomNavigationItem> items;
  final PreferredSizeWidget appBar;
  final bool Function(int) shouldShowAppBar;

  BottomNavigationLayout(
      {Key key, this.items, this.appBar, this.shouldShowAppBar})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationLayoutState(appBar, items, shouldShowAppBar);
  }
}

class _BottomNavigationLayoutState extends State<BottomNavigationLayout> {
  int _currentIndex = 0;
  List<BottomNavigationItem> _items;
  PreferredSizeWidget _appbar;
  bool Function(int) _shouldShowAppBar;

  _BottomNavigationLayoutState(
      this._appbar, this._items, this._shouldShowAppBar);

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _shouldShowAppBar(_currentIndex) ? _appbar : null,
      body: SafeArea(child: _items[_currentIndex].widget),
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).primaryColor,
          backgroundColor: Theme.of(context).backgroundColor,
          items: _items
              .map((item) => BottomNavigationBarItem(
                  icon: item.icon,
                  label: item.label,
                  backgroundColor: Theme.of(context).backgroundColor,
                  activeIcon: item.activeIcon))
              .toList()),
    );
  }
}

class BottomNavigationItem {
  final String label;
  final Widget icon;
  final Widget activeIcon;
  final Widget widget;

  BottomNavigationItem(
      {@required this.label,
      @required this.icon,
      @required this.widget,
      @required this.activeIcon});
}
