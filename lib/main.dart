import 'package:flutter/material.dart';
import 'package:hike_messenger/cart_screen/cart_screen.dart';
import 'package:hike_messenger/dashboard_module/dashboard_screen.dart';
import 'package:hike_messenger/profile_module/profile_screen.dart';
import 'package:hike_messenger/registration_module/registration_screen.dart';
import 'login_module/login_screen.dart';

void main() {
  runApp(HikeMessenger());
}


class HikeMessenger extends StatefulWidget {
  const HikeMessenger({Key? key}) : super(key: key);

  @override
  State<HikeMessenger> createState() => _HikeMessengerState();
}

class _HikeMessengerState extends State<HikeMessenger> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }

}
