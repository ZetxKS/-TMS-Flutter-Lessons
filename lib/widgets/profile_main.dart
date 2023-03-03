import 'package:flutter/material.dart';

class ProfileMain extends StatelessWidget {
  const ProfileMain({Key? key}) : super(key: key);

  Widget _info_boxes({
    required String title,
    required String value,
  }) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          color: const Color(0xFF6750A4).withOpacity(0.05),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Text(
            title,
          ),
          SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
              'https://i7.photo.2gis.com/images/branch/0/30258560058209386_eeb9.jpg',
              width: 139,
              height: 176,
              fit: BoxFit.cover),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("John Doue",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              SizedBox(height: 8),
              Text("Plumber",
                  style: TextStyle(fontSize: 16, color: Color(0xFF625B71))),
              Row(
                children: [
                  _info_boxes(title: "Rating", value: "4.2"),
                  SizedBox(width: 8),
                  _info_boxes(title: "Projects", value: '50')
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
