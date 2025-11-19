import 'package:flutter/material.dart';

void main() {
  runApp(EventManagementApp());
}

class EventManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Management App',
      home: Scaffold(
        appBar: AppBar(title: Text('Event Management')),
        body: Center(child: Text('Welcome to Event Management App')),
      ),
    );
  }
}
