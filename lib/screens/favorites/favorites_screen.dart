import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text("Favorites")),
    body: Center(
      child: Text("Favorites Screen", style: TextStyle(fontSize: 24)),
    ),
  );
}
