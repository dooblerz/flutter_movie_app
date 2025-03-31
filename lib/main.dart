import 'package:flutter/material.dart';
import 'package:movie_app/screens/splash/splash_screen.dart';
import 'package:movie_app/widgets/custom_button.dart';
import 'package:movie_app/widgets/custom_centerlogo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Colors.red;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: primaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
      ),
      home: SplashScreen(),
    );
  }
}

class NewScreen extends StatelessWidget {
  const NewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(-10),
        child: AppBar(),
      ),
      backgroundColor: Colors.white, // Убеждаемся, что фон белый
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Color.fromRGBO(255, 255, 255, 0.5),
                BlendMode.srcOver,
              ),
              child: Image.asset(
                'assets/images/Bitmap.png',
                width: size.width,
                height: size.height / 2,
                fit: BoxFit.cover, // Обрезает или масштабирует изображение
              ),
            ),
          ),
          Positioned(
            top: 23,
            right: 30,

            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              child: Text(
                'As Guest',
                style: TextStyle(color: Color(0xFF000000), fontSize: 16),
              ),
            ),
          ),
          Positioned(
            top: size.height / 2.15,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomCenterLogo(
                    height: 21,
                    width: 141,
                    urlPath: 'assets/images/Logo3x.png',
                  ),
                  SizedBox(height: 10),
                  Text(
                    'By creating an account you get access to an unlimited number of exercises',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  CustomButton(
                    text: 'Sign in',
                    color: Color(0xFFC70C3C),
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                  SizedBox(height: 20),
                  CustomButton(
                    text: 'Sign up',
                    color: Color(0xFFF5F6F7),
                    textColor: Color(0xFF3544C4),
                    onPressed: () {},
                  ),
                  SizedBox(height: 30),
                  Divider(height: 1, color: Color(0xFFDEE2EE)),
                  SizedBox(height: 30),
                  CustomButton(
                    text: 'Sign in with Facebook',
                    color: Color(0xFF3A559F),
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
