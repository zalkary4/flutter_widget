import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AwesomeAnimation extends StatefulWidget {
  const AwesomeAnimation({
    super.key,
  });

  @override
  State<AwesomeAnimation> createState() => _AwesomeAnimationState();
}

class _AwesomeAnimationState extends State<AwesomeAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Lottie.network(
              'https://assets8.lottiefiles.com/packages/lf20_wzcckjq4.json')),
    );
  }
}
