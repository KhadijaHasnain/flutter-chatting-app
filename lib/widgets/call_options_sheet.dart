import 'package:flutter/material.dart';
import '../screens/chat_screen.dart';

class CallOptionsSheet extends StatelessWidget {
  final String name;

  CallOptionsSheet({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Options for $name"),
          ListTile(
            leading: Icon(Icons.call),
            title: Text("Call"),
            onTap: () {
              Navigator.pop(context);
              // Add your call logic here
            },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text("Message"),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatScreen(name: name), // Open ChatScreen with the contact's name
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
