import 'package:dayloz/screens/loginSignup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dayloz());
}

class Dayloz extends StatelessWidget {
  const Dayloz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignupLogin(),
    );
  }
}
