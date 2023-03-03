import 'package:flutter/material.dart';

class Profile2Parameters extends StatelessWidget {
  const Profile2Parameters({Key? key}) : super(key: key);

  Widget _get_line({required String text, required String buttonText}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: const TextStyle(color: Color(0xFF625B71), fontSize: 16),),
        TextButton(onPressed: () => {print("PAYMENT")}, child: Text(buttonText, style: const TextStyle(color: Color(0xFF6750A4), fontSize: 16, decoration: TextDecoration.underline),))
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _get_line(text: 'Payment', buttonText: "Add Payment"),
        _get_line(text: 'Promos', buttonText: 'Add Promo Code')
      ],
    );
  }
}
