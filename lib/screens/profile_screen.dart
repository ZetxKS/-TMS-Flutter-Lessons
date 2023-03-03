import "package:flutter/material.dart";
import "package:firstflutterapp/widgets/profile_description.dart";
import "package:firstflutterapp/widgets/profile_main.dart";

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tasker Profile",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color(0xFFE7E0EC),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 26),
          child: Column(
            children: const [
              ProfileMain(),
              SizedBox(height: 26),
              ProfileDescription(),
            ],
          )),
    );
  }
}
