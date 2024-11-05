import 'package:flutter/material.dart';
import '../widgets/chat_bubble.dart'; // Import ChatBubble widget

class ChatScreen extends StatelessWidget {
  final String name;

  // ChatScreen now properly expects a name parameter
  ChatScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name), // Show the contact's name in the app bar
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                ChatBubble(text: "Hey wassup?", isSender: true),
                ChatBubble(text: "Not much, you?", isSender: false),
                ChatBubble(text: "Just working on some code.", isSender: true),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type your message...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.purple),
                  onPressed: () {
                    // Logic to send a message
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
