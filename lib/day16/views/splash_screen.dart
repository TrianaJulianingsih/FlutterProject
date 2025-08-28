import 'package:flutter/material.dart';
import 'package:ppkd_flutter_1/day10/tugas_7.dart';
import 'package:ppkd_flutter_1/day16/preference/login.dart';
import 'package:ppkd_flutter_1/day16/utils/app_image.dart';
import 'package:ppkd_flutter_1/day25/views/login_api_screen.dart';
import 'package:ppkd_flutter_1/extension/navigation.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const id = "/splash_screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    isLogin();
  }

  void isLogin() async {
    bool? isLogin = await PreferenceHandler.getLogin();

    Future.delayed(Duration(seconds: 3)).then((value) async {
      print(isLogin);
      if (isLogin == true) {
        context.pushReplacementNamed(Home.id);
      } else {
        context.push(LoginScreen());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImage.iconGoogle),
            SizedBox(height: 20),
            Text("Welcome"),
          ],
        ),
      ),
    );
  }
}
