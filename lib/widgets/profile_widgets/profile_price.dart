import 'package:flutter/material.dart';

class ProfilePrice extends StatelessWidget {
  const ProfilePrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("\$18/hr", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
            TextButton(
              onPressed: () => print("ALLOHA"),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                child: Text("Select Tasker", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF6750A4)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))
                )
              ),
            )
          ],
        )
    );
  }
}
