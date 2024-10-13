import 'package:flutter/material.dart';

import '../Widget/AppBarIcon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomeWidgetBottomNavigation();
}

class _HomeWidgetBottomNavigation extends State<HomePage> {
  FloatingActionButtonLocation _fabLocation =
      FloatingActionButtonLocation.centerDocked;
  bool _isSearchClicked = false;

  void _toggleSearch() {
    setState(() {
      _isSearchClicked = !_isSearchClicked;
      if (_isSearchClicked) {
        _fabLocation = FloatingActionButtonLocation.centerFloat;
      } else {
        _fabLocation = FloatingActionButtonLocation.centerDocked;
      }
    });
  }

  void _onSetting() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Settings'),
          content: const Text('Settings dialog content goes here.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text('Hello home page'),
        ),
        bottomNavigationBar: AppBarIcon(
          fabLocation: _fabLocation,
          isSearchClicked: _isSearchClicked,
          onSearchClicked: _toggleSearch,
        ),
        floatingActionButtonLocation: _fabLocation,
        floatingActionButton: AnimatedSwitcher(
          duration: const Duration(milliseconds: 1000),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(scale: animation, child: child);
          },
          child: FloatingActionButton(
            onPressed: _onSetting,
            tooltip: 'Setting',
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            mouseCursor: MouseCursor.defer,
            shape: const CircleBorder(),
            enableFeedback: true,
            child: const Icon(Icons.settings),
          ),
        ));
  }
}
