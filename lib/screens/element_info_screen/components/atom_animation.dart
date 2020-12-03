import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AtomAnimation extends StatefulWidget {
  final int atomicNumber;

  AtomAnimation(this.atomicNumber);
  @override
  _AtomAnimationState createState() => _AtomAnimationState();
}

class _AtomAnimationState extends State<AtomAnimation> {
  @override
  void initState() {
    super.initState();
    print('atom${widget.atomicNumber + 1}.json');
  }

  Widget getAtomAnimation() {
    try {
      return Lottie.asset(
          'assets/atoms-animation/atom${widget.atomicNumber + 1}.json');
    } catch (e) {
      return Placeholder();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: getAtomAnimation(),
    );
  }
}
