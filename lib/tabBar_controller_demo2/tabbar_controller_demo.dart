import 'package:first_application/widgets_demo/tabbar_demo.dart';
import 'package:flutter/material.dart';

class TabBarControllerDemo extends StatefulWidget {
  const TabBarControllerDemo({super.key});

  @override
  State<TabBarControllerDemo> createState() => _TabBarControllerDemoState();
}

class _TabBarControllerDemoState extends State<TabBarControllerDemo>
    with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whatsapp'),
        bottom: PreferredSize(
          preferredSize: const Size(
            double.infinity,
            70,
          ),
          child: TabBar(
            controller: _tabController,
            tabs: const [
              Text('Chat'),
              Text('Status'),
              Text('Calls'),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Chats(),
          Status(),
          Calls(),
        ],
      ),
    );
  }
}
