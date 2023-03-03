import 'package:flutter/material.dart';

class Profile2PriceDetails extends StatelessWidget {
  const Profile2PriceDetails({Key? key}) : super(key: key);

  Widget _get_line({required String lineName, required String lineVal}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              lineName,
              style:
              const TextStyle(fontSize: 16, color: Color(0xFF625B71)),
            ),
            Text(
              lineVal,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF625B71)),
            )
          ],
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Price Details",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),

        Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              const SizedBox(height: 10,),
              _get_line(lineName: "Hourly Rate", lineVal: '\$18/hr'),
              const SizedBox(height: 20,),
              _get_line(lineName: "Support Fee", lineVal: '\$10')
            ],
          ),
        ),
      ],
    );
  }
}
