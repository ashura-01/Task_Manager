import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/UI/Screens/login_screen.dart';
import 'package:task_manager/UI/Utils/assets_path.dart';
import 'package:task_manager/UI/Widgets/screen_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  Future<void> _moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.pushReplacement( context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
          child: Center(
        child: SvgPicture.asset(
          AssetsPath.logoSvg,
        ),
      )),
    );
  }
}
