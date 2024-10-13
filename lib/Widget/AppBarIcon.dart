import 'package:flutter/material.dart';
import 'package:koi_fish_mobile/icons/fish_9113_icons.dart';

class AppBarIcon extends StatefulWidget {
  final FloatingActionButtonLocation? fabLocation;
  final bool? isSearchClicked; // Marked as final
  final VoidCallback? onSearchClicked;

  const AppBarIcon(
      {this.fabLocation, this.isSearchClicked, this.onSearchClicked});

  @override
  State<AppBarIcon> createState() => _AppBarIconState();
}

class _AppBarIconState extends State<AppBarIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isSearchVisible = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleSearch() {
    setState(() {
      _isSearchVisible = !_isSearchVisible;
      if (_isSearchVisible) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
    if (widget.onSearchClicked != null) {
      widget.onSearchClicked!(); // Trigger callback
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.blue,
      child: IconTheme(
        data: IconThemeData(
          color: Theme.of(context).colorScheme.onSurface,
          size: 30,
          applyTextScaling: true,
        ),
        child: Row(
          children: <Widget>[
            IconButton(
              tooltip: 'Menu',
              icon: const Icon(Icons.menu),
              onPressed: () {},
              hoverColor: Colors.orangeAccent,
            ),
            const Spacer(),
            SizeTransition(
              sizeFactor: _animation,
              axis: Axis.vertical,
              axisAlignment: -1,
              child: Container(
                width: width * 0.5,
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
            ),
            IconButton(
              tooltip: 'Search',
              icon: const Icon(Icons.search),
              onPressed: _toggleSearch,
              hoverColor: Colors.orangeAccent,
            ),
            IconButton(
              tooltip: 'Quản lý dữ liệu',
              icon: const Icon(Fish_9113.fish),
              onPressed: () {},
              hoverColor: Colors.orangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}
