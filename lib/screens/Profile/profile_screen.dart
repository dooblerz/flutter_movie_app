import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text("Profile")),
    body: Center(child: Text("Profile Screen", style: TextStyle(fontSize: 24))),
  );
}
