import 'package:flutter/material.dart';

class TabbarMyWidget extends StatefulWidget {
  const TabbarMyWidget({super.key});

  @override
  _TabbarMyWidgetState createState() => _TabbarMyWidgetState();
}

class _TabbarMyWidgetState extends State<TabbarMyWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Binar - Tabbar"),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.directions_boat),
            ),
            Tab(
              icon: Icon(Icons.directions_bus),
            ),
            Tab(
              icon: Icon(Icons.directions_ferry),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: Text("Tab 1"),
          ),
          Center(
            child: Text("Tab 2"),
          ),
          Center(
            child: Text("Tab 3"),
          ),
        ],
      ),
    );
  }
}
