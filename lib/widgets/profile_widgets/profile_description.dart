import 'package:flutter/material.dart';

class ProfileDescription extends StatelessWidget {
  const ProfileDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Skill and Experience",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 8),
        Text(
          "test intro Skill and Experience Skill and Experience Skill and Experience Skill and Experience Skill and Experience Skill and Experience Skill and Experience Skill and Experience Skill and Experience Skill and Experience Skill and Experience Skill and Experience Skill and Experience Skill and Experience Skill and Experience",
          style: TextStyle(color: Color(0xFF625B71), height: 20 / 14),
        )
      ],
    );
  }
}
