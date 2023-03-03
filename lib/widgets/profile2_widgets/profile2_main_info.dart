import 'package:flutter/material.dart';

class Profile2MainInfo extends StatelessWidget {
  const Profile2MainInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Time and date',
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: const [
                  Icon(Icons.calendar_month_outlined,
                      color: Color(0xFF625B71)),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Friday - May 27, 2023",
                    style: TextStyle(color: Color(0xFF625B71)),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: const [
                  Icon(Icons.access_time_sharp,
                      color: Color(0XFF625B71)),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "9.30 am",
                    style: TextStyle(color: Color(0xFF625B71)),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network('https://sunrift.com/wp-content/uploads/2014/12/Blake-profile-photo-square.jpg', width: 72, height: 72, fit: BoxFit.contain,),
          ),
          const SizedBox(height: 4,),
          const Text("Dianne Russell", style: TextStyle(color: Color(0xFF625B71), fontWeight: FontWeight.w500))
        ])
      ],
    );
  }
}
