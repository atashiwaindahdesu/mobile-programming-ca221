import 'package:flutter/material.dart';
import 'package:whatsapp_ui/callscreen.dart';
import 'package:whatsapp_ui/chatscreen.dart';
import 'package:whatsapp_ui/statusscreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
        title: Text("WhatsApp"),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          PopupMenuButton<String>(
            onSelected: (value) {},
            itemBuilder: (context) {
              return [
                PopupMenuItem(value: "New Group", child: Text("New Group")),
                PopupMenuItem(value: "Settings", child: Text("Settings")),
              ];
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: "Chats"),
            Tab(text: "Status"),
            Tab(text: "Calls"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          ChatsScreen(),
          StatusScreen(),
          CallsScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.chat),
        backgroundColor: Theme.of(context).colorScheme.secondary,
        onPressed: () {
          // Add chat functionality here
        },
      ),
    );
  }
}
