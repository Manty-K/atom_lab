import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BigScreen extends StatelessWidget {
  const BigScreen({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Lottie.asset(name),
        ),
      ),
    );
  }
}
