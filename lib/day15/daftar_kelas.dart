import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ppkd_flutter_1/day10/drawer.dart';
import 'package:ppkd_flutter_1/day15/halaman_konfirm.dart';
import 'package:ppkd_flutter_1/day15/text_form.dart';
import 'package:ppkd_flutter_1/extension/navigation.dart';

class DaftarKelas extends StatefulWidget {
  const DaftarKelas({super.key});

  @override
  State<DaftarKelas> createState() => _SwitchState();
}

class _SwitchState extends State<DaftarKelas> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController domisiliController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register"), backgroundColor: Colors.blue),
      drawer: DrawerMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            spacing: 12,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        fontFamily: "Poppins_Regular",
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              TextFormConst(
                hintText: "Input Name",
                controller: nameController,
                onChanged: (p0) {
                  setState(() {});
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "name not empty";
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(
                        fontFamily: "Poppins_Regular",
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              TextFormConst(
                hintText: "Input Email",
                controller: emailController,
                onChanged: (p0) {
                  setState(() {});
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Email not empty";
                  } else if (!value.contains("@")) {
                    return "Email is invalid";
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Text(
                      'Phone',
                      style: TextStyle(
                        fontFamily: "Poppins_Regular",
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              TextFormConst(
                hintText: "Input Phone",
                controller: phoneController,
                onChanged: (p0) {
                  setState(() {});
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Phone not empty";
                  } else if (!value.contains(RegExp(r'^\d+$'))) {
                    return "Email is is invalid";
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Text(
                      'Domisili',
                      style: TextStyle(
                        fontFamily: "Poppins_Regular",
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              TextFormConst(
                hintText: "Input Domisili",
                controller: domisiliController,
                onChanged: (p0) {
                  setState(() {});
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Domisili not empty";
                  } else if (RegExp(r'^\d').hasMatch(value)) {
                    return "Domisili is invalid";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 56,
                width: 500,
                child: ElevatedButton(
                  onPressed: () {
                    //Error dan sukses menggunakan ScaffoldMessenger dan formKey
                    if (_formKey.currentState!.validate()) {
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   SnackBar(content: Text("Form Validasi Berhasil")),
                      // );

                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Register Confirmation"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("name: ${nameController.text}"),
                                Text("email: ${emailController.text}"),
                                Text("phone: ${phoneController.text}"),
                                Text("domisili: ${domisiliController.text}"),
                                // Image.asset(
                                //   'assets/images/rendang.jpeg',
                                //   width: 90,
                                //   height: 100,
                                //   fit: BoxFit.cover,
                                // ),
                                Lottie.asset(
                                  'assets/animations/Success Check.json',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                child: Text("Batal"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              TextButton(
                                child: Text("Lanjut"),
                                onPressed: () {
                                  context.push(
                                    HalamanDaftar(
                                      name: nameController.text,
                                      email: emailController.text,
                                      phone: phoneController.text,
                                      domisili: domisiliController.text,
                                    ),
                                  );
                                },
                              ),
                            ],
                          );
                        },
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Register failed"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Invalid"),
                                SizedBox(height: 20),
                                // Image.asset(
                                //   'assets/images/rendang.jpeg',
                                //   width: 90,
                                //   height: 100,
                                //   fit: BoxFit.cover,
                                // ),
                                Lottie.asset(
                                  'assets/animations/false.json',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                child: Text("Batal"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              TextButton(
                                child: Text("Ok"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 31, 46, 205),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Montserrat",
                      // fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
