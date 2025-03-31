import 'package:flutter/material.dart';
import 'package:movie_app/widgets/custom_favourite_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Column(
      children: [
        Container(
          width: double.infinity,
          height: 196,
          decoration: BoxDecoration(color: Color(0xFFF5F6F7)),
          child: Padding(
            padding: const EdgeInsets.only(top: 58, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Favourite',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  'Showing 234 Your favourite',
                  style: TextStyle(color: Color(0xFF616161), fontSize: 14),
                ),
                SizedBox(height: 21),
                // Здесь надо поменять количество избранных после регистрации
                Row(
                  children: [
                    CustomFavouriteButton(
                      color: Color(0xFF3544C4),
                      textColor: Color(0xFFFFFFFF),
                      height: 34,
                      text: 'All',
                      width: 38,
                    ),
                    SizedBox(width: 14),
                    CustomFavouriteButton(
                      color: Colors.white,
                      height: 34,
                      text: 'Action',
                      width: 62,
                      textColor: Color(0xFF616161),
                    ),
                    SizedBox(width: 14),
                    CustomFavouriteButton(
                      color: Colors.white,
                      height: 34,
                      text: 'Adventure',
                      width: 82,
                      textColor: Color(0xFF616161),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 581,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Column(
                children: [],
              ), // сделать List View или на подобие такого для отображение списка виде колонок одинаковых друг на друга
            ),
          ),
        ),
      ],
    ),
  );
}
