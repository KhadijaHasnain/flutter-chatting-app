import 'package:flutter/material.dart';
import '../widgets/call_options_sheet.dart';

class CallHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call History"),
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.call_missed, color: Colors.red),
            title: Text("Anna Bella"),
            subtitle: Text("Missed Call"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return CallOptionsSheet(name: "Anna Bella");
                },
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.call_received, color: Colors.green),
            title: Text("Marc Stegen"),
            subtitle: Text("Received Call"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return CallOptionsSheet(name: "Marc Stegen");
                },
              );
            },
          ),
          // Add more list tiles for other call history entries
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: Icon(Icons.dialpad),
        onPressed: () {
          // Open Dial Pad logic here
        },
      ),
    );
  }
}
