import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_app/screens/wrapper/main_wrapper.dart';
import 'package:movie_app/widgets/custom_centerlogo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 2), () {
      if (!mounted) return;
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (_) => MainWrapper()));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(-10),
        child: AppBar(),
      ),
      body: SizedBox.expand(
        child: Stack(
          children: [
            Image.asset('assets/images/Bitmap-2.png', fit: BoxFit.cover),
            CustomCenterLogo(
              width: 284,
              height: 84,
              urlPath: 'assets/images/Logo3x.png',
            ),
          ],
        ),
      ),
    );
  }
}
