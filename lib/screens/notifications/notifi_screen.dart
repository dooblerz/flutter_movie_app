import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('Notification')),
    body: Center(
      child: Text("Notifications Screen", style: TextStyle(fontSize: 24)),
    ),
  );
}
