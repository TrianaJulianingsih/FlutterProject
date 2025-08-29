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
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  GetUserModel? userData;
  bool isEditing = false;
  bool isLoading = true;
  String? errorMessage = '';
  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  Future<void> _loadProfileData() async {
    setState(() {
      isLoading = true;
      errorMessage = '';
    });
    try {
      final data = await AuthenticationAPI.getProfile();
      setState(() {
        userData = data;
        _nameController.text = data.data?.name ?? '';
        _emailController.text = data.data?.email ?? '';
      });
    } catch (e) {
      setState(() {
        errorMessage = e.toString();
        isLoading = false;
      });
      // } finally {
      //   setState(() {

      //   });
    }
  }

  Future<void> updateProfile() async {
    setState(() {
      isLoading = true;
      errorMessage = '';
    });
    try {
      final updateData = await AuthenticationAPI.updateUser(
        name: _nameController.text,
        email: _emailController.text,
      );
      setState(() {
        userData = updateData;
        isEditing = false;
      });
    } catch (e) {
      setState(() {
        errorMessage = e.toString();
        isLoading = false;
      });
    }
  }

  void showEditDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Edit Profile"),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    border: OutlineInputBorder(
                      // borderSide: BorderSide(
                      //   color: Color.fromARGB(141, 177, 175, 175)
                      // )
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      // borderSide: BorderSide(
                      //   color: Color.fromARGB(141, 177, 175, 175)
                      // )
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Batal"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                updateProfile();
              },
              child: Text("Simpan"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.white),
            onPressed: showEditDialog,
            tooltip: "Edit Profile",
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Row(
                      children: [
                        Icon(Icons.person_2_rounded),
                        SizedBox(width: 20),
                        Text("Nama: ", style: TextStyle(fontSize: 18)),
                        Text(
                          userData?.data?.name?.toString() ?? '',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 10),
                    child: Row(
                      children: [
                        Icon(Icons.email_rounded),
                        SizedBox(width: 20),
                        Text("Email: ", style: TextStyle(fontSize: 18)),
                        Text(
                          userData?.data?.email?.toString() ?? '',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Logout")),
          ],
        ),
      ),
      // bottomNavigationBar: ButtomNav(),
    );
  }
}
