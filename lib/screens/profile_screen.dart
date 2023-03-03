import 'package:firstflutterapp/widgets/profile_widgets/profile_price.dart';
import 'package:firstflutterapp/widgets/profile_widgets/profile_reviews.dart';
import "package:flutter/material.dart";
import 'package:firstflutterapp/widgets/profile_widgets/profile_description.dart';
import 'package:firstflutterapp/widgets/profile_widgets/profile_main.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final delimeter = Container(
      height: 1,
      color: Color(0x1079747E),
    );
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
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              SizedBox(height: 26),
              ProfileMain(),
              SizedBox(height: 26),
              ProfileDescription(),
              SizedBox(height: 26),
              ProfileReviews(),
              SizedBox(height: 26),
              delimeter,
              ProfilePrice(),
            ],
          )),
    );
  }
}
