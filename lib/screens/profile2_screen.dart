import 'package:firstflutterapp/widgets/profile2_widgets/profile2_main_info.dart';
import 'package:firstflutterapp/widgets/profile2_widgets/profile2_parameters.dart';
import 'package:firstflutterapp/widgets/profile2_widgets/profile2_price_details.dart';
import 'package:flutter/material.dart';

class Profile2Screen extends StatelessWidget {
  const Profile2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final delimeter = Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(height: 1, color: const Color(0x1079747E)),
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Review and Confirm",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: const Color(0xFFE7E0EC),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              const SizedBox(
                height: 26,
              ),
              const Profile2MainInfo(),
              delimeter,
              const Profile2Parameters(),
              delimeter,
              const Profile2PriceDetails(),
              delimeter,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Total Rate",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  Text(
                    "\$28",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Your payment method may temporarily show a hold in the amount of \$15 per hour, which is the rate of your Tasker. You have the option to cancel anytime. However, cancellations made less than 24 hours before the scheduled start time may incur a cancellation fee equivalent to one hour of service. Please note that all tasks have a minimum of one hour charge.',
                style: TextStyle(color: Color(0xFF625B71)),
              ),
              const SizedBox(height: 20,),
              TextButton(
                onPressed: () => print("Confirm"),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(const Color(0xFF6750A4)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)))),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text("Confirm and Chat", style: TextStyle(color: Colors.white),),
                ),
              )
            ],
          ),
        ));
  }
}
