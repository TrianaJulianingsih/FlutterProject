import 'package:flutter/material.dart';
import 'package:ppkd_flutter_1/day25/api/register_user.dart';
import 'package:ppkd_flutter_1/day25/models/get_user_model.dart';

class ProfileAPIScreen extends StatefulWidget {
  const ProfileAPIScreen({super.key});
  static const id = "/profileapi";

  @override
  State<ProfileAPIScreen> createState() => _ProfileAPIScreenState();
}

class _ProfileAPIScreenState extends State<ProfileAPIScreen> {
  GetUserModel? user;
  bool _isLoading = true;
  String? _errorMessage;
  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  Future<void> _loadProfileData() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });
    try {
      final userData = await AuthenticationAPI.getProfile();
      setState(() {
        user = userData;
      });
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  // Future<void> profile() async {
  //   setState(() {
  //     _isLoading = true;
  //     _errorMessage = null;
  //   });
  //   try
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Center(
        child: Container(
          height: 250,
          width: 380,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.blue,
          ),
          child: Row(
            children: [
              Text("Nama: "),
              Text(user?.data?.name?.toString() ?? ''),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: ButtomNav(),
    );
  }
}
