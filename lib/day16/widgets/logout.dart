import 'package:flutter/material.dart';
import 'package:ppkd_flutter_1/day16/preference/login.dart';
import 'package:ppkd_flutter_1/day9/tugas_6.dart';
import 'package:ppkd_flutter_1/extension/navigation.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        PreferenceHandler.removeLogin();
        context.pushReplacementNamed(TugasEnam.id);
      },
      child: Text("Keluar"),
    );
  }
}
