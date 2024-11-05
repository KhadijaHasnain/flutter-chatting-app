import 'package:flutter/material.dart';
import 'chat_screen.dart'; // Import ChatScreen for navigation

class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Logic for starting a new chat (optional)
            },
          )
        ],
      ),
      body: ListView(
        children: [
          // List of chats or contacts
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.jpg'), // Using AssetImage for local image
            ),
            title: Text("Anna Bella"),
            subtitle: Text("Hey wassup..."),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatScreen(name: "Anna Bella"), // Pass name to ChatScreen
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/avatar.jpg'), // Using AssetImage for local image
            ),
            title: Text("Marc Stegen"),
            subtitle: Text("What’s going on..."),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatScreen(name: "Marc Stegen"), // Pass name to ChatScreen
              ),
            ),
          ),
          // Add more ListTiles for other contacts
        ],
      ),
    );
  }
}
