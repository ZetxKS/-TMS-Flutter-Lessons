import 'package:flutter/material.dart';

class ProfileMain extends StatelessWidget {
  const ProfileMain({Key? key}) : super(key: key);

  Widget _info_boxes({required String title, required String value}) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          color: const Color(0xFF6750A4).withOpacity(0.05),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
          SizedBox(height: 8),
          Text(value,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))
        ],
      ),
    );
  }

  Widget _build_info_boxes({required String val1, required String val2}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _info_boxes(title: 'Rating', value: val1),
        _info_boxes(title: 'Projects', value: val2)
      ],
    );
  }

  Widget _waiting_jobs({ required int jobs }) {
    return Row(
      children: [
        const Icon(
          Icons.check_circle_outline,
          color: Color(0xFF6750A4),
        ),
        Text(
          "${jobs.toString()} waiting in line jobs",
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
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
              const Text("John Doe",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              const SizedBox(height: 8),
              const Text("Plumber",
                  style: TextStyle(fontSize: 16, color: Color(0xFF625B71))),
              const SizedBox(height: 8),
              _waiting_jobs(jobs: 5),
              const SizedBox(height: 8),
              _build_info_boxes(val1: '4.2', val2: '50')
            ],
          ),
        )
      ],
    );
  }
}
