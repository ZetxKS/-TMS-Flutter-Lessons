import 'package:flutter/material.dart';
import 'package:firstflutterapp/screens/profile_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProfileScreen()
    );
  }
}
